#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Solicitação de Serviços
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SERV.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SERV.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SERV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SOLICITACAO_SERV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SOLICITACAO_SERV_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_solicitacao_serv
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSOLICITACAOSERV-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSOLICITACAOSERV-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOSERV-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_SERV.robot"
# robot -v browser:firefox -t "SCR8SMSOLICITACAOSERV-001:Fluxo Principal" -d ./5-results/SCR8SMSOLICITACAOSERV-001 "3-tests/8-SERVICO_APOIO/M_SOLICITACAO_SERV.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSOLICITACAOSERV-001"
    Acessar a tela "Serviços de Apoio>Manutenção>Ordem Serviço>Solicitação de Serviço"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Validar Campos Preenchidos ao Acessar Tela
    Preencher Tipo de OS e Bem Patrimonial |${dados}[TipoOS]| |${dados}[BemPatrimonial]|
    Validar Campos com Preenchimento Automatico |${dados}[Localidade]|
    Preencher Descricao |${dados}[Descricao]|
    Preencher Campos Obrigatorios |${dados}[Oficina]| |${dados}[Ramal]| |${dados}[Email]| |${dados}[Prioridade]|
    Salvar Solicitacao de Servico |${dados}[MsgConfirmacao]| |${dados}[MsgSucesso]|

