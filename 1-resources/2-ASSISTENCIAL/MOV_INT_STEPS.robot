##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Transferência de Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/MOV_INT_PAGE.robot


*** Variable ***

*** Keywords ***
Selecionar Paciente
    Preencher Campo                     ${CampoAtendimento}                 1000002204
    Send Keys                           Enter
    Click no Item                       ${BotaoOK}

Validar campos Preenchidos Apos Consulta
    Validar Elemento Pelo Titulo        505146
    Validar Elemento Pelo Titulo        ACACIA MARIA MAIA COSTA
    Validar Elemento Pelo Titulo        AMIL 2016
    Validar Elemento Pelo Titulo        ORIGEM URGENCIA
    Validar Elemento Pelo Titulo        GEISHA ABREU SOARES DE PINA

Selecionar Motivo
    Selecionar Item Na Lista            ${BotaoLovMotivo}                   MOTIVO INTERNAÇAO                   MOTIVO INTERNAÇAO

Selecionar Tipo de Limpeza
    Selecionar Item Na Lista            ${BotaoLovTpLimpeza}                ADMINISTRATIVA                      ADMINISTRATIVA


