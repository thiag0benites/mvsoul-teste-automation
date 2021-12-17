#################################################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/SCR6CMCONCOR-001 "3-tests\1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
# firefox:        robot -v browser:firefox -d ./5-results/SCR6CMCONCOR-001 "3-tests\1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_LISTAGEM_CONFERENCIA_STEPS "3-tests\1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/C_LISTAGEM_CONFERENCIA_RPA_STEPS "3-tests\1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/1-ATENDIMENTO/M_RECEPCAO_AGENDA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
 # Suite registrada no gerenciador de dados
${suite}          m_recepcao_agenda
 # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMRECEPCAOAGENDA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMRECEPCAOAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMRECEPCAOAGENDA-001 "3-tests/1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
# robot -v browser:firefox -t "SCR1AMRECEPCAOAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMRECEPCAOAGENDA-001 "3-tests/1-ATENDIMENTO/M_RECEPCAO_AGENDA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMRECEPCAOAGENDA-001"
    Acessar a tela "Atendimento>Ambulatório>Atendimentos>Recepção Central de Marcação"@nprint @nao
    Parametros de pesquisa recepção do paciente |${dados}[Paciente]|
