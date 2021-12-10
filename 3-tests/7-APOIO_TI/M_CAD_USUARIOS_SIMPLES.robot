#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_CAD_USUARIOS_SIMPLES
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_CAD_USUARIOS_SIMPLES "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_CAD_USUARIOS_SIMPLES "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_CAD_USUARIOS_SIMPLES "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_CAD_USUARIOS_SIMPLES "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_CAD_USUARIOS_SIMPLES
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR7AMCADUSUARIOSSIMPLES-001:Fluxo principal
# robot -v browser:chrome -t "SCR7AMCADUSUARIOSSIMPLES-001:Fluxo principal" -d ./5-results/SCR7AMCADUSUARIOSSIMPLES-001 "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
# robot -v browser:firefox -t "SCR7AMCADUSUARIOSSIMPLES-001:Fluxo principal" -d ./5-results/SCR7AMCADUSUARIOSSIMPLES-001 "3-tests/7-APOIO_TI/M_CAD_USUARIOS_SIMPLES.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SCR7AMCADUSUARIOSSIMPLES-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher o codigo do Usuario e Nome completo
    Clicar no botão Criar usuarios
    # Validar cadastro realizado
    