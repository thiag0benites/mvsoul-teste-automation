#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_POS_EST
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_POS_EST_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_POS_EST
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRPOSEST-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MRPOSEST-001:Fluxo principal" -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
# robot -v browser:firefox -t "SCR4MRPOSEST-001:Fluxo principal" -d ./5-results/R_POS_EST "3-tests/4-MATERIAIS/R_POS_EST.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRPOSEST-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Administrativos>Posição de Estoque"@nprint @las
    Clique em impressao de relatorio Posicao de Estoque
    Validar relatorio