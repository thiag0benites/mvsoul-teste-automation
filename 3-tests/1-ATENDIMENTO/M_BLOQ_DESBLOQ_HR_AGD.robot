#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Alteracao de Tipo de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_BLOQ_DESBLOQ_HR_AGD.robot"
# firefox: robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_BLOQ_DESBLOQ_HR_AGD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_BLOQ_DESBLOQ_HR_AGD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_BLOQ_DESBLOQ_HR_AGD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_BLOQ_DESBLOQ_HR_AGD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMBLOQDESBLOQHRAGD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR1AMBLOQDESBLOQHRAGD-001:Fluxo Principal" -d ./5-results/SCR1AMBLOQDESBLOQHRAGD-001 "3-tests/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD.robot"
# robot -v browser:firefox -t "SCR1AMBLOQDESBLOQHRAGD-001:Fluxo Principal" -d ./5-results/SCR1AMBLOQDESBLOQHRAGD-001 "3-tests/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMBLOQDESBLOQHRAGD-001"
    Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Manutenção de Escalas/Agendas>Bloqueio/Desbloqueio de Horários"@nprint @las
    Validar Acesso a Tela |Bloqueio e Desbloqueio de Horários|

    Preencher Agenda, Faixa e Motivo |${dados}[Agenda]| |${dados}[Inicio]| |${dados}[Fim]| |${dados}[Motivo]|
    Confirmar e Validar |${dados}[Mensagem]|

SCR1AMBLOQDESBLOQHRAGD-002:Desbloquear
# robot -v browser:chrome -t "SCR1AMBLOQDESBLOQHRAGD-002:Desbloquear" -d ./5-results/SCR1AMBLOQDESBLOQHRAGD-002 "3-tests/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD.robot"
# robot -v browser:firefox -t "SCR1AMBLOQDESBLOQHRAGD-002:Desbloquear" -d ./5-results/SCR1AMBLOQDESBLOQHRAGD-002 "3-tests/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMBLOQDESBLOQHRAGD-001"
    Acessar a tela "Atendimento>Central de Agendamento>Agendamentos>Manutenção de Escalas/Agendas>Bloqueio/Desbloqueio de Horários"@nprint @las
    Validar Acesso a Tela |Bloqueio e Desbloqueio de Horários|

    Desbloquear |${dados}[Opcao]|
    Preencher Agenda, Faixa e Motivo |${dados}[Agenda]| |${dados}[Inicio]| |${dados}[Fim]| |${dados}[Motivo]|
    Confirmar e Validar |${dados}[Mensagem]|