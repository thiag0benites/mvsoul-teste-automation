##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Passos da tela de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_TROCPAC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Paciente de Origem|${PacOrigem}| e Destino|${PacDestino}|
    Preencher campo                       ${CampoPacienteOrigem}            ${PacOrigem}
    Send Keys                             tab
    Preencher campo                       ${CampoPacienteDestino}           ${PacDestino}
    Send Keys                             tab
    Click no Item                         ${BtnContinuar}    
    Validar Pop-Pup de Alerta e Clicar    ${MsgUsuarioConfirm}              ${BtnSimAlerta}
    Validar Pop-Pup de Alerta e Clicar    ${MsgExclusaoPac}                 ${BtnSimAlerta}
    Validar Pop-Pup de Alerta e Clicar    ${MsgConfirmTransf}               ${BtnOkAlerta}                             