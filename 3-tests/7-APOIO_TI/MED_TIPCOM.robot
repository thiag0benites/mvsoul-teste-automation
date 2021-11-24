#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela MED_TIPCOM
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/MED_TIPCOM "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
# firefox: robot -v browser:firefox -d ./5-results/MED_TIPCOM "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/MED_TIPCOM "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/MED_TIPCOM "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/7-APOIO_TI/MED_TIPCOM_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            MED_TIPCOM
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMMEDTIPCOM-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMMEDTIPCOM-001:Fluxo principal" -d ./5-results/SCR7AMMEDTIPCOM-001 "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
# robot -v browser:firefox -t "SCR7AMMEDTIPCOM-001:Fluxo principal" -d ./5-results/SCR7AMMEDTIPCOM-001 "3-tests/7-APOIO_TI/MED_TIPCOM.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMMEDTIPCOM-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Clicar no botão Executar 
    Validar Campos De Retorno Da Consulta 