##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Relatorio de Pacientes Atendidos por Origem
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_ATENDIMENTOSMEDICO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Parametros de Impressao |${Medico}| |${DtInicial}|
    Wait Until Element Is Visible    ${BotaoLovMedico}    180
    Selecionar Item Na Lista    ${BotaoLovMedico}     ${Medico}    ${Medico}
    Preencher Campo        ${CampoDtInicial}     ${DtInicial}

Realizar Impressao do Relatorio
    Click no Item    ${BotaoImprimir}
    Sleep  2
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot


