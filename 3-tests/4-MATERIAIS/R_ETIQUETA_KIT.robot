#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_ETIQUETA_KIT
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_ETIQUETA_KIT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_ETIQUETA_KIT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRETIQUETAKIT-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MRETIQUETAKIT-001:Fluxo principal" -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
# robot -v browser:firefox -t "SCR4MRETIQUETAKIT-001:Fluxo principal" -d ./5-results/R_ETIQUETA_KIT "3-tests/4-MATERIAIS/R_ETIQUETA_KIT.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRETIQUETAKIT-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Operacionais>Documento de Entradas e Entradas de Produtos>Etiqueta dos Kits"@nprint @las
    Clique em impressao de etiqueta 
    Validar mensagem de impressao com sucesso |${dados}[MsgEsperada]|