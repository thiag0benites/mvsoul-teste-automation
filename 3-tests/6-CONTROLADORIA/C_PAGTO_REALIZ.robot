#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela C_PAGTO_REALIZ
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
# firefox: robot -v browser:firefox -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/6-CONTROLADORIA/C_PAGTO_REALIZ_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            C_PAGTO_REALIZ
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COCPAGTOREALIZ-001:Fluxo principal
# robot -v browser:chrome -t "SCR6COCPAGTOREALIZ-001:Fluxo principal" -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
# robot -v browser:firefox -t "SCR6COCPAGTOREALIZ-001:Fluxo principal" -d ./5-results/C_PAGTO_REALIZ "3-tests/6-CONTROLADORIA/C_PAGTO_REALIZ.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COCPAGTOREALIZ-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Clicar no botao Pesquisar
    Preencher os campos data inicial e data final |${dados}[dataInicial]|,|${dados}[dataFinal]|
    Validar Resultado da Pesquisa realizada |${dados}[dado]|