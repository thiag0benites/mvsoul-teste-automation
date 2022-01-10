#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_ORDCOM
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_ORDCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_ORDCOM
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRORDCOM:Fluxo principal
# robot -v browser:chrome -t "SCR4MRORDCOM:Fluxo principal" -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
# robot -v browser:firefox -t "SCR4MRORDCOM:Fluxo principal" -d ./5-results/R_ORDCOM "3-tests/4-MATERIAIS/R_ORDCOM.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRORDCOM"
    Acessar a tela "Materiais e Logística>Compras>Relatórios>Ordem de Compra>Ordem de Compra"@nprint @las
    Preencher na table o numero da ordem de compra |${dados}[numOrdemCompra]|
    Imprimir ordem de compra 
    Verificar impressao da tela 