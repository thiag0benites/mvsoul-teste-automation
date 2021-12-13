#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Testes da tela M_PED_RX
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_PED_RX "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/bd/BancoDados.robot
Resource            ../../1-resources/ContextoSteps.robot 
Resource            ../../1-resources/1-ATENDIMENTO/M_PED_RX_STEPS.robot
Resource            ../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            M_PED_RX
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SRC1AMPEDRX-001:Fluxo principal
# robot -v browser:chrome -t "SRC1AMPEDRX-001:Fluxo principal" -d ./5-results/SRC1ACONATE-001 "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
# robot -v browser:firefox -t "SRC1AMPEDRX-001:Fluxo principal" -d ./5-results/SRC1ACONATE-001 "3-tests/1-ATENDIMENTO/M_PED_RX.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SRC1AMPEDRX-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Preencher os campos da tela de pedidos de exames |${dados}[setorExecutante]|,|${dados}[atendimento]|,|${dados}[medico]|,|${dados}[data]|,|${dados}[tecnico]|,|${dados}[setor]|,|${dados}[exame]|
    Clicar no botao Salvar 
