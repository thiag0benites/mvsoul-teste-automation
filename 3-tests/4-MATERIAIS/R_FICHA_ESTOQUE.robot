#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_FICHA_ESTOQUE
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_FICHA_ESTOQUE_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_FICHA_ESTOQUE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRFICHAESTOQUE:Fluxo principal
# robot -v browser:chrome -t "SCR4MRFICHAESTOQUE:Fluxo principal" -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
# robot -v browser:firefox -t "SCR4MRFICHAESTOQUE:Fluxo principal" -d ./5-results/R_FICHA_ESTOQUE "3-tests/4-MATERIAIS/R_FICHA_ESTOQUE.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRFICHAESTOQUE"
    Acessar a tela "Materiais e Logística>Compras>Relatórios>Operacionais>Ficha de Estoque"@nprint @las
    Preencher os campos estoque e produto |${dados}[estoque]|,|${dados}[produto]|  
    Clique no botao imprimir ficha de estoque
    Realizar impressao da tela 