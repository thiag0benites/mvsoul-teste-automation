#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Ordem de Serviço
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_OS.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_OS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_OS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_OS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SOLICITACAO_OS_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solicitacao_os
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSOLICITACAOOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSOLICITACAOOS-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOOS-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_OS.robot"
# robot -v browser:firefox -t "SCR8SMSOLICITACAOOS-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOOS-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_OS.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSOLICITACAOOS-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Cadastro"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Campos Obrigatorios |${dados}[Descricao]| |${dados}[DtPrev]| |${dados}[HrPrev]| |${dados}[Especialidade]| |${dados}[TipoOS]| |${dados}[BemPatrimonial]| |${dados}[Oficina]| |${dados}[Solicitante]|
    Preencher Aba Servico |${dados}[CdServico]| |${dados}[CdFuncionario]|
    Salvar Ordem de Servico |${dados}[MensagemEsperadaSucesso]| |${dados}[MensagemEsperadaConfirma]|
    Sleep  5