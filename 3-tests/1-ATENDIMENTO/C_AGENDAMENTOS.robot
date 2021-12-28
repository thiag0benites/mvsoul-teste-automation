#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta de Agendamentos (Std)
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDAMENTOS.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDAMENTOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDAMENTOS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\C_AGENDAMENTOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/C_AGENDAMENTOS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          c_agendamentos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1ACAGENDAMENTOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1ACAGENDAMENTOS-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDAMENTOS-001 "3-tests/1-ATENDIMENTO/C_AGENDAMENTOS.robot"
# robot -v browser:firefox -t "SCR1ACAGENDAMENTOS-001:Fluxo Principal" -d ./5-results/SCR1ACAGENDAMENTOS-001 "3-tests/1-ATENDIMENTO/C_AGENDAMENTOS.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1ACAGENDAMENTOS-001"
    Acessa a Tela Pela Busca |c_agendamentos||Agendamentos| @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Entrada Dados e Pesquisa |${dados}[DtInicial]| |${dados}[DtFinal]|
    Validar Dados Pos Pesquisa |${dados}[Agenda]| |${dados}[DataHoraAgenda]| |${dados}[ItemAgendamento]| |${dados}[PrestadorMed]| |${dados}[NomePac]|