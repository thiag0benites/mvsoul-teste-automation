#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela CAD_PRE_PROVISORIO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/CAD_PRE_PROVISORIO "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/CAD_PRE_PROVISORIO "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/CAD_PRE_PROVISORIO "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CAD_PRE_PROVISORIO "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/7-APOIO_TI/CAD_PRE_PROVISORIO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            CAD_PRE_PROVISORIO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMCADPREPROVISORIO-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMCADPREPROVISORIO-001:Fluxo principal" -d ./5-results/SCR7AMCADPREPROVISORIO-001 "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
# robot -v browser:firefox -t "SCR7AMCADPREPROVISORIO-001:Fluxo principal" -d ./5-results/SCR7AMCADPREPROVISORIO-001 "3-tests/7-APOIO_TI/CAD_PRE_PROVISORIO.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMCADPREPROVISORIO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os campos |${dados}[cartaoNacionalSaude]|,|${dados}[tipoPrestador]|,|${dados}[crm]|
    Clicar no botão Salvar do menu