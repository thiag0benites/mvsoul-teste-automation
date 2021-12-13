#################################################################################################################################################################
# Autor: Danilo Campanello
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
Resource            ../../1-resources/auxiliar/Genericos.robot
Resource            ../../1-resources/4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessao
# Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_entrada
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-794:Realizar entrada de produtos normais controle de lote e validade e sem OC 
# robot -v browser:chrome -t "SMF-794:Realizar entrada de produtos normais controle de lote e validade e sem OC" -d ./5-results/SMF-794 "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
# robot -v browser:firefox -t "SMF-794:Realizar entrada de produtos normais controle de lote e validade e sem OC" -d ./5-results/SMF-794 "3-tests/4-MATERIAIS/M_ENTRADA_NOVA.robot"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Entrada de Produtos"@nprint @las
    Informar "Tipo de Documento|NOTA FISCAL|", "Estoque|CONSIGNADOS|"
    Preencher Campos: "Numero Documento|102030|", "Serie|01|", "Fornecedor|1000 MARCAS|", Data Emissao|10/Dez/2021|, "CFOP|TESTE|", "Valor Total Nota|20000|"
    

    