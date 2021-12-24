#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Registro de Pré-Agendamento Cirúrgico
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REG_PRE_AGENDA.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REG_PRE_AGENDA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REG_PRE_AGENDA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_REG_PRE_AGENDA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_REG_PRE_AGENDA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_REG_PRE_AGENDA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMREGPREAGENDA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMREGPREAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMREGPREAGENDA-001 "3-tests/1-ATENDIMENTO/M_REG_PRE_AGENDA.robot"
# robot -v browser:firefox -t "SCR1AMREGPREAGENDA-001:Fluxo Principal" -d ./5-results/SCR1AMREGPREAGENDA-001 "3-tests/1-ATENDIMENTO/M_REG_PRE_AGENDA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMREGPREAGENDA-001"
    Acessar a tela pela busca |M_REG_PRE_AGENDA||M_REG_PRE_AGENDA| @las 
    Validar Acesso a Tela |Registro de Pré-Agendamento Cirúrgico|
    Preencher Paciente, Data e Tempo |${dados}[Paciente]| |${dados}[Tempo]|
    Preencher Informacoes da Cirurgia |${dados}[Prestador]| |${dados}[Especialid]| |${dados}[Convenio]| |${dados}[Kit]|
    Confirmar Cirurgia e Validar |${dados}[Convenio]| |${dados}[Plano]| |${dados}[Anestesia]| |${dados}[Cirurgia]| |${dados}[MsgSalva]| 