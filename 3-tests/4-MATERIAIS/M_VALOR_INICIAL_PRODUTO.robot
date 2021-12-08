#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Tela M_VALOR_INICIAL_PRODUTO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_VALOR_INICIAL_PRODUTO "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_VALOR_INICIAL_PRODUTO "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_VALOR_INICIAL_PRODUTO "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_VALOR_INICIAL_PRODUTO "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
#################################################################################################################################################################
*** Settings ***

Resource            ../../1-resources/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_VALOR_INICIAL_PRODUTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4MVALORINICIALPRODUTO-001:Valor Inicial Produto
# robot -v browser:chrome -t "SRC4MVALORINICIALPRODUTO-001:Valor Inicial Produto" -d ./5-results/SRC4MVALORINICIALPRODUTO-001 "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
# robot -v browser:firefox -t "SRC4MVALORINICIALPRODUTO-001:Valor Inicial Produto" -d ./5-results/SRC4MVALORINICIALPRODUTO-001 "3-tests/4-MATERIAIS/M_VALOR_INICIAL_PRODUTO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC4MVALORINICIALPRODUTO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Cálculos>Valor Inicial Produto"@nprint @las
    Validar Acesso a Tela |${dados}[nomeTela]|
    Preencher produto |${dados}[produto]| e validar |${dados}[descricaoProduto]|
    Informar valor de custo |${dados}[valorCusto]| e validar mensagem |${dados}[mensagemSucesso]|    