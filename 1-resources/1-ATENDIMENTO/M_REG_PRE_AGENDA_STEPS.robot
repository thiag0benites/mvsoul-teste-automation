##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Registro de Pré-Agendamento Cirúrgico
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_REG_PRE_AGENDA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Paciente, Data e Tempo |${Paciente}| |${Tempo}|
    Preencher Campo    ${CampoPaciente}    ${Paciente}
    Preencher campo com data e hora    ${CampoData}    %d/%m/%Y    24:00:00
    Send Keys    TAB
    ${Data}    Get Element Attribute    ${CampoData}    title
    Altera massa de dados da "M_REG_PRE_AGENDA", linha "1", coluna "Data", valor "${Data}"
    Preencher Campo    ${CampoTempo}    ${Tempo}

Preencher Informacoes da Cirurgia |${Prestador}| |${Especialid}| |${Convenio}| |${Kit}|
    Preencher Campo    ${CampoPrestador}    ${Prestador}
    Preencher Campo    ${CampoEspecialid}    ${Especialid}
    Preencher Campo    ${CampoConv}    ${Convenio}
    Preencher Campo    ${CampoKit}    ${Kit}

Confirmar Cirurgia e Validar |${Convenio}| |${Plano}| |${Anestesia}| |${Cirurgia}| |${MsgSalva}|
    Preencher Campo    ${CampoConv}    ${Convenio}
    Preencher Campo    ${CampoPlan}    ${Plano}
    Preencher Campo    ${CampoAnestesia}    ${Anestesia}
    Send Keys    TAB
    Preencher Campo    ${CampoCirurgia}    ${Cirurgia}
    Send Keys    TAB
    Click no Item    ${CheckPrincipal}
    Click no Item    ${BotaoConfirmar}
    Sleep    3
    Click no Item    ${BotaoSair}
    Valida Mensagem    ${MensagemToast}    ${MsgSalva}
