##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Transferência de Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/MOV_INT_PAGE.robot


*** Variable ***

*** Keywords ***
Selecionar Paciente |${Atendimento}|
    Preencher Campo                     ${CampoAtendimento}                 ${Atendimento}
    Send Keys                           Enter
    Click no Item                       ${BotaoOK}

Validar campos Preenchidos Apos Consulta |${CdPaciente}| |${Paciente}| |${Plano}| |${Origem}| |${Medico}|
    Validar Elemento Pelo Titulo        ${CdPaciente}
    Validar Elemento Pelo Titulo        ${Paciente}
    Validar Elemento Pelo Titulo        ${Plano}
    Validar Elemento Pelo Titulo        ${Origem}
    Validar Elemento Pelo Titulo        ${Medico}

Selecionar Motivo |${Motivo}|
    Selecionar Item Na Lista            ${BotaoLovMotivo}                   ${Motivo}                  ${Motivo}

Selecionar Tipo de Limpeza |${TpLimpeza}|
    Selecionar Item Na Lista            ${BotaoLovTpLimpeza}                ${TpLimpeza}                       ${TpLimpeza}


