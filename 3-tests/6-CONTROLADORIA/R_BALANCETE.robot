#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_BALANCETE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/R_BALANCETE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_BALANCETE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CORBALANCETE-001:Fluxo principal
# robot -v browser:chrome -t "SCR6CORBALANCETE-001:Fluxo principal" -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
# robot -v browser:firefox -t "SCR6CORBALANCETE-001:Fluxo principal" -d ./5-results/R_BALANCETE "3-tests/6-CONTROLADORIA/R_BALANCETE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CORBALANCETE-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Imprimir relatorio de balancete
    Realizar impressao de relatorio de balancete