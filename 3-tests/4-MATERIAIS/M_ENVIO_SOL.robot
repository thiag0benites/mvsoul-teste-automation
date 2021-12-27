#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Produtos do Estoque
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENVIO_SOL.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENVIO_SOL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENVIO_SOL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_ENVIO_SOL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_ENVIO_SOL_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_envio_sol
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMENVIOSOL-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMENVIOSOL-001:Fluxo Principal" -d ./5-results/SCR4MMENVIOSOL-001 "3-tests/4-MATERIAIS/M_ENVIO_SOL.robot"
# robot -v browser:firefox -t "SCR4MMENVIOSOL-001:Fluxo Principal" -d ./5-results/SCR4MMENVIOSOL-001 "3-tests/4-MATERIAIS/M_ENVIO_SOL.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMENVIOSOL-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Coleta de Preços (Licitação)>Envio Automático de Cotações"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTelaSolicitacao]|
    Consultar Solicitacao |${dados}[Solicitacao]| |${dados}[Estoque]|
    Acessar Tela M_ENVIO_SOL |${dados}[NomeTelaEnvio]| 
    Realizar Envio de Cotacao |${dados}[Fornecedor]| |${dados}[TpComunicacao]| |${dados}[MensagemSucesso]| |${dados}[MsgConfFornecSolic]| |${dados}[MsgConfirma]|
    # Retornar massa de dados ao status inicial do teste
    Excluir Envio |${dados}[MsgValidaExcluir]| |${dados}[MensagemSucesso]|