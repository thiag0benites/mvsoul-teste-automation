#################################################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Teste da tela Entrada dos Produtos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS/ "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS/ "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS/ "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS/ "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/ContextoSteps.robot
Resource            ../../1-resources/4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC4MMENTRADANOVA-001:Fluxo Principal
# robot -v browser:chrome -t "SRC4MMENTRADANOVA-001:Fluxo Principal" -d ./5-results/SRC4MMENTRADANOVA-001 "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
# robot -v browser:firefox -t "SRC4MMENTRADANOVA-001:Fluxo Principal" -d ./5-results/SRC4MMENTRADANOVA-001 "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Entrada de Produtos"@nprint @las
    Selecionar Ordem de Compra Autorizada
    Selcionar Tipo de Documento |NOTA FISCAL|
    Preencher Campo Nr Doc |87654321|
    Preencher Campo Serie |6|
    Preencher Campo Data Emissao |15/10/2021|
    Selcionar CFOP |COMPRA P/USO OU CONSUMO|
    Clicar no Botao |Produtos|
    Cadastrar Lote |L888000|
    
