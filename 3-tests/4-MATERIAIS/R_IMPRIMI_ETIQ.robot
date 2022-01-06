#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_IMPRIMI_ETIQ
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_IMPRIMI_ETIQ_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_IMPRIMI_ETIQ
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRIMPRIMIETIQ:Fluxo principal
# robot -v browser:chrome -t "SCR4MRIMPRIMIETIQ:Fluxo principal" -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
# robot -v browser:firefox -t "SCR4MRIMPRIMIETIQ:Fluxo principal" -d ./5-results/R_IMPRIMI_ETIQ "3-tests/4-MATERIAIS/R_IMPRIMI_ETIQ.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRIMPRIMIETIQ"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Operacionais>Documento de Entradas e Entradas de Produtos>Etiqueta do Produto"@nprint @las
    Visualizar os lotes zerados confirmando o botao Sim 
    Preencher etiqueta, estoque e quantidade do lote a ser impresso |${dados}[etiqueta]|,|${dados}[estoque]|,|${dados}[quantidade]|
    Clique no botao imprimir etiqueta 
    Validar mensagem de impressao com sucesso |${dados}[MsgEsperada]|