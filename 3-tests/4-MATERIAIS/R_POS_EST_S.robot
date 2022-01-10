#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_POS_EST_S
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_POS_EST_S_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_POS_EST_S
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRPOSESTS-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MRPOSESTS-001:Fluxo principal" -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
# robot -v browser:firefox -t "SCR4MRPOSESTS-001:Fluxo principal" -d ./5-results/R_POS_EST_S "3-tests/4-MATERIAIS/R_POS_EST_S.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRPOSESTS-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Administrativos>Posição de Estoque Simplificado"@nprint @las
    Clique em impressao de relatorio Posicao de Estoque Simplificado
    Validar relatorio de posicao de estoque Simplificado