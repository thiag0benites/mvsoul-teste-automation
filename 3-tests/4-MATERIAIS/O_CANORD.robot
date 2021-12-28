#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Esse caso de teste tem como objetivo mostrar o rateio do pagamento quando realizado o cancelamento da quantidade pendente dos itens da ordem de compra
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_CANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_CANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_CANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_CANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/O_CANORD_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_CANORD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4OCANORD-001:Rateio - Ordem de Compra
# robot -v browser:chrome -t "SRC4OCANORD-001:Rateio - Ordem de Compra" -d ./5-results/SRC4OCANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
# robot -v browser:firefox -t "SRC4OCANORD-001:Rateio - Ordem de Compra" -d ./5-results/SRC4OCANORD "3-tests/4-MATERIAIS/O_CANORD.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC4OCANORD-001"
    Acessar a tela "Materiais e Logística>Compras>Compras>Ordem de Compra>Cancelamento"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]| 
    Preencher codigo e Validar |${dados}[codigo]|
    Preencher motivo do Cancelamento e Validar |${dados}[motivoCancelamento]| 
    Confirmar e validar mensagem |${dados}[mensagemSucesso]|