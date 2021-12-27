##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_TROCPAC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Paciente de Origem|${PacOrigem}|, Destino|${PacDestino}| e Validar Informacoes |${MsgUsuConf}|, |${MsgExcPac}|, |${MsgConTrans}|
    Preencher campo    ${CampoPacienteOrigem}    ${PacOrigem}
    Send Keys    tab
    Preencher campo    ${CampoPacienteDestino}    ${PacDestino}
    Send Keys    tab
    Click no Item    ${BtnContinuar}
    Validar Informacao Item    ${MsgUsuario}    ${MsgUsuConf}
    Click no Item    ${BtnSimAlerta}
    Validar Informacao Item    ${MsgUsuario}    ${MsgExcPac}
    Click no Item    ${BtnSimAlerta}
    Validar Informacao Item    ${MsgUsuario}    ${MsgConTrans}
    Click no Item    ${BtnOkAlerta}
