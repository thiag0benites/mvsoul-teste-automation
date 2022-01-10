#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Relatório de Estatística Hospitalar
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_EST_HOSPITALAR.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_EST_HOSPITALAR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_EST_HOSPITALAR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\R_EST_HOSPITALAR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/R_EST_HOSPITALAR_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          r_est_hospitalar
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ARESTHOSPITALAR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ARESTHOSPITALAR-001:Fluxo Principal" -d ./5-results/SCR1ARESTHOSPITALAR-001 "3-tests/1-ATENDIMENTO/R_EST_HOSPITALAR.robot"
# robot -v browser:firefox -t "SCR1ARESTHOSPITALAR-001:Fluxo Principal" -d ./5-results/SCR1ARESTHOSPITALAR-001 "3-tests/1-ATENDIMENTO/R_EST_HOSPITALAR.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ARESTHOSPITALAR-001"
    Acessa a Tela Pela Busca |r_est_hospitalar||Sintético| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Click Botao Pesquisar
    #|${dados}[DtIn]||${dados}[TpAtend]|
