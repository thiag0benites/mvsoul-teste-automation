#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_USUARIOUNID
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_USUARIOUNID "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_USUARIOUNID "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_USUARIOUNID "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_USUARIOUNID "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/7-APOIO_TI/M_USUARIOUNID_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_USUARIOUNID
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMUSUARIOUNID-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMUSUARIOUNID-001:Fluxo principal" -d ./5-results/SCR7AMUSUARIOUNID-001 "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
# robot -v browser:firefox -t "SCR7AMUSUARIOUNID-001:Fluxo principal" -d ./5-results/SCR7AMUSUARIOUNID-001 "3-tests/7-APOIO_TI/M_USUARIOUNID.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMUSUARIOUNID-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Selecionar Cod Usuario |${dados}[codUsuario]|,|${dados}[validaCodUsuario]|
    Selecionar Cod Unidade de Internacao |${dados}[codUnidInternacao]|,|${dados}[validaCodInternacao]|
    Clicar no botão Salvar do menu
    Validar cadastro realizado |${dados}[mensagem]|
    

    