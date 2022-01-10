#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela R_LIST_CONS_PAC
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
# firefox: robot -v browser:firefox -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/4-MATERIAIS/R_LIST_CONS_PAC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            R_LIST_CONS_PAC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MRLISTCONSPAC-001:Fluxo principal
# robot -v browser:chrome -t "SCR4MRLISTCONSPAC-001:Fluxo principal" -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
# robot -v browser:firefox -t "SCR4MRLISTCONSPAC-001:Fluxo principal" -d ./5-results/R_LIST_CONS_PAC "3-tests/4-MATERIAIS/R_LIST_CONS_PAC.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MRLISTCONSPAC-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Relatórios>Operacionais>Consumo das Movimentações>Consumo de Produtos por Paciente e/ou Setor"@nprint @las
    Clique em impressao de relatorio de Consumo de produtos por paciente ou setor
    Realizar impressao de relatorio de consumo