#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela O_PAG - Pagamentos.
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_PAG "3-tests\6-CONTROLADORIA\O_PAG.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_PAG "3-tests\6-CONTROLADORIA\O_PAG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_PAG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/6-CONTROLADORIA "3-tests\6-CONTROLADORIA\O_PAG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/6-CONTROLADORIA/O_PAG_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          O_PAG
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COPAG-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6COPAG-001:Fluxo Principal" -d ./5-results/SCR6COPAG-001 "3-tests/6-CONTROLADORIA\O_PAG.robot"
# robot -v browser:firefox -t "SCR6COPAG-001:Fluxo Principal" -d ./5-results/SCR6COPAG-001 "3-tests/6-CONTROLADORIA\O_PAG.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COPAG-001"
    Acessar |${dados}[tela]|@nprint @las
    Preencher campo Data Inicio|${dados}[dtInicio]|, Data Fim|${dados}[dtFim]|, processo|${dados}[processo]|, Conta corrente|${dados}[cc]|
    Selecionar titulo a pagar
    Clicar no botao[Efetuar Pagamento]
    Clicar no botao[OK]
