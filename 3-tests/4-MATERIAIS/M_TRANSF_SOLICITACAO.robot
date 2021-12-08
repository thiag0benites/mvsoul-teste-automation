#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Follow-Up
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_TRANSF_SOLICITACAO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_TRANSF_SOLICITACAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_TRANSF_SOLICITACAO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_TRANSF_SOLICITACAO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/M_TRANSF_SOLICITACAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_transf_solicitacao
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMTRANSFSOLICITACAO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMTRANSFSOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR4MMTRANSFSOLICITACAO-001 "3-tests/4-MATERIAIS/M_TRANSF_SOLICITACAO.robot"
# robot -v browser:firefox -t "SCR4MMTRANSFSOLICITACAO-001:Fluxo Principal" -d ./5-results/SCR4MMTRANSFSOLICITACAO-001 "3-tests/4-MATERIAIS/M_TRANSF_SOLICITACAO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMTRANSFSOLICITACAO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Transferir Solicitações de Produtos"@nprint @las
    Pesquisar Solicitacoes |${dados}[Estoque]| |${dados}[DtInicial]|
    Realizar Transferencia
    Preencher Estoque Destino |${dados}[EstoqueNovo]|
    Validar Transferencia Estoque |${dados}[MensagemSucesso]| |${dados}[MensagemImprimir]|
    Validar Impressao Relatorio |${dados}[SaidaRelatorio]|



