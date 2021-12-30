#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Recebimento de transferências entre estoques
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_RECEB_TRANSFERENCIA.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_RECEB_TRANSFERENCIA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_RECEB_TRANSFERENCIA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_RECEB_TRANSFERENCIA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_RECEB_TRANSFERENCIA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_receb_transferencia
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMRECEBTRANSFERENCIA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMRECEBTRANSFERENCIA-001:Fluxo Principal" -d ./5-results/SCR4MMRECEBTRANSFERENCIA-001 "3-tests/4-MATERIAIS/M_RECEB_TRANSFERENCIA.robot"
# robot -v browser:firefox -t "SCR4MMRECEBTRANSFERENCIA-001:Fluxo Principal" -d ./5-results/SCR4MMRECEBTRANSFERENCIA-001 "3-tests/4-MATERIAIS/M_RECEB_TRANSFERENCIA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMRECEBTRANSFERENCIA-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Conf. Transferência entre Estoques"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Selecionar Transferencia
    Confirmar Transferencia |${dados}[MsgImprimir]| |${dados}[MensagemSucesso]|
