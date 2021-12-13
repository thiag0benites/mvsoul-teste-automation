#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_USU_MULTI_EMPRESA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_USU_MULTI_EMPRESA "3-tests/7-APOIO_TI/M_USU_MULTI_EMPRESA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_USU_MULTI_EMPRESA "3-tests/7-APOIO_TI/M_USU_MULTI_EMPRESA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_USU_MULTI_EMPRESA "3-tests/7-APOIO_TI/M_USU_MULTI_EMPRESA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_USU_MULTI_EMPRESA "3-tests/7-APOIO_TI/M_USU_MULTI_EMPRESA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/7-APOIO_TI/M_USU_MULTI_EMPRESA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_USU_MULTI_EMPRESA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMUSUMULTIEMPRESA-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMUSUMULTIEMPRESA-001:Fluxo principal" -d ./5-results/SCR7AMUSUMULTIEMPRESA-001 "3-tests/7-APOIO_TI/M_USU_MULTI_EMPRESA.robot"
# robot -v browser:firefox -t "SCR7AMUSUMULTIEMPRESA-001:Fluxo principal" -d ./5-results/SCR7AMUSUMULTIEMPRESA-001 "3-tests/7-APOIO_TI/CM_USU_MULTI_EMPRESA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMUSUMULTIEMPRESA-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os campos |${dados}[empresa]|,|${dados}[usuario]|
    Clicar no botao Salvar do menu
    Validar mensagem ao salvar |${dados}[mensagem]|