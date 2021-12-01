#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_GERENC_IMP_WEB
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_GERENC_IMP_WEB "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_GERENC_IMP_WEB "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_GERENC_IMP_WEB "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_GERENC_IMP_WEB "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/7-APOIO_TI/M_GERENC_IMP_WEB_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_GERENC_IMP_WEB
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMGERENCIMPWEB-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMGERENCIMPWEB-001:Fluxo principal" -d ./5-results/SCR7AMGERENCIMPWEB-001 "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
# robot -v browser:firefox -t "SCR7AMGERENCIMPWEB-001:Fluxo principal" -d ./5-results/SCR7AMGERENCIMPWEB-001 "3-tests/7-APOIO_TI/M_GERENC_IMP_WEB.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMGERENCIMPWEB-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Clicar na aba Gerenciamento 
    Preencher o campo Data Inicial e Data final
    Clicar no botao Executar Filtro
    Validar Resultado da Pesquisa
