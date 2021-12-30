##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Relatorio de Pacientes Atendidos por Origem
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_PAC_ATEND_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Parametros de Impressao |${Origem}| |${DtInicial}|
    Wait Until Element Is Visible    ${BotaoLovOrigem}    180
    Selecionar Item Na Lista    ${BotaoLovOrigem}     ${Origem}    ${Origem}
    Preencher Campo        ${CampoDtInicial}     ${DtInicial}

Realizar Impressao do Relatorio
    Click no Item    ${BotaoImprimir}
    Sleep  2
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot


