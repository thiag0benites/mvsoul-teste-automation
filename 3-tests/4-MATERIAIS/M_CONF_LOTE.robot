#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_CONF_LOTE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/M_CONF_LOTE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_CONF_LOTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMCONFLOTE-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MMCONFLOTE-001:Fluxo principal" -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
# robot -v browser:firefox -t "SCR4MMCONFLOTE-001:Fluxo principal" -d ./5-results/M_CONF_LOTE "3-tests/4-MATERIAIS/M_CONF_LOTE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMCONFLOTE-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Listagens>Conferência de Lotes"@nprint @las
    Clique em impressao de relatorio de conferencia de lote
    Validar relatorio de conferencia de lote