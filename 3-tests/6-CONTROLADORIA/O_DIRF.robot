#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela O_DIRF
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
# firefox: robot -v browser:firefox -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/M_TIP_DET.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_DIRF
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COODIRF-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COODIRF-001:Fluxo principal" -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
# robot -v browser:firefox -t "SCR6COODIRF-001:Fluxo principal" -d ./5-results/O_DIRF "3-tests/6-CONTROLADORIA/O_DIRF.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COODIRF-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    