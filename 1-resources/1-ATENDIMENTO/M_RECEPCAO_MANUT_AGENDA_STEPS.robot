##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Manutenção de Agendas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_RECEPCAO_MANUT_AGENDA_PAGE.robot
Resource    ../2-ASSISTENCIAL/M_USUUNID_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Campos Para Consulta de Agenda |${DtInicial}| |${DtFinal}| |${Agendamento}| |${Agenda}| |${Prestador}|
    Preencher Campo                         ${CampoDtInicial}                 ${DtInicial}
    Preencher Campo                         ${CampoDtFinal}                   ${DtFinal}
    Preencher Campo                         ${CampoAgendamento}               ${Agendamento}
    Preencher Campo                         ${CampoAgenda}                    ${Agenda}
    Selecionar Item Na Lista                ${BotaoLovPrestador}              ${Prestador}                 ${Prestador}
    Marcar Checkbox |${CbHorarioAgendado}|

Clicar Botao Executar Pesquisa
    Click no Item                           ${BotaoExecPesquisa}     

Validar Resultado da Pesquisa |${CdAgenda}| |${CdPaciente1}| |${Paciente1}| |${ItemAgendamento}| |${CdPaciente2}| |${Paciente2}|
    Validar Elemento Pelo Titulo            ${CdAgenda}    
    Validar Elemento Pelo Titulo            ${CdPaciente1}
    Validar Elemento Pelo Titulo            ${Paciente1}
    Validar Elemento Pelo Titulo            ${ItemAgendamento}
    Validar Elemento Pelo Titulo            ${CdPaciente2}
    Validar Elemento Pelo Titulo            ${Paciente2}
    

