#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela CANC_ALTA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/CANC_ALTA "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
# firefox: robot -v browser:firefox -d ./5-results/CANC_ALTA "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/CANC_ALTA "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/CANC_ALTA "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/CANC_ALTA_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            CANC_ALTA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1ACANCALTA-001:Fluxo principal
# robot -v browser:chrome -t "SRC1ACANCALTA-001:Fluxo principal" -d ./5-results/SRC1ACANCALTA-001 "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
# robot -v browser:firefox -t "SRC1ACANCALTA-001:Fluxo principal" -d ./5-results/SRC1ACANCALTA-001 "3-tests/1-ATENDIMENTO/CANC_ALTA.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1ACANCALTA-001"
    Acessar a tela "Atendimento>Internação>Consultas>Atendimentos"@nprint @las
    