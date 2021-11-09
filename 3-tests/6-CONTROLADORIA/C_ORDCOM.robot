#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Este caso de teste tem como objetivo, exibir as ordens de compra de acordo com os parâmetros indicados.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CC_ORDCOM-001:Caixa Importar movimentação" -d ./5-results/SCR6CC_ORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
# firefox:  robot -v browser:firefox -t "SCR6CC_ORDCOM-001:Caixa Importar movimentação" -d ./5-results/SCR6CC_ORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CC_ORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CC_ORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/C_ORDCOM_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            C_ORDCOM
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CCORDCOM-001:Consultar Ordem de Compra
# robot -v browser:chrome -t "SCR6CCORDCOM-001:Consultar Ordem de Compra" -d ./5-results/SSCR6CCORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
# robot -v browser:firefox -t "SCR6CCORDCOM-001:Consultar Ordem de Compra" -d ./5-results/SCR6CCORDCOM-001 "3-tests/6-CONTROLADORIA/C_ORDCOM.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CCORDCOM-001"
    Acessar a tela "Materiais e Logística>Compras>Consultas>Ordem de Compra"@nprint @las
    Validar Acesso a Tela |Ordens de Compra|
    Preencher Código |${dados}[codigo]|
    Clicar no botão Executar
    Sleep   1