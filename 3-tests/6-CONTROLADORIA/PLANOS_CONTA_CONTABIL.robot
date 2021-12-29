#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela PLANOS_CONTA_CONTABIL
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
# firefox: robot -v browser:firefox -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            PLANOS_CONTA_CONTABIL
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COPLANOSCONTACONTABIL-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COPLANOSCONTACONTABIL-001:Fluxo principal" -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
# robot -v browser:firefox -t "SCR6COPLANOSCONTACONTABIL-001:Fluxo principal" -d ./5-results/PLANOS_CONTA_CONTABIL "3-tests/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COPLANOSCONTACONTABIL-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Validar Tela e seus elementos |${dados}[valueTableContas]|,|${dados}[valueTablePlanos]|
    Navegar entre as abas da tela de planos de conta contabil
