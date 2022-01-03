##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Relatorio de Pacientes Atendidos por Origem
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_PAC_AGENDADOS_DATA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Parametros de Impressao |${Prestador}| |${DtInicial}|
    Wait Until Element Is Visible    ${BotaoLovPrestador}    180
    Selecionar Item Na Lista    ${BotaoLovPrestador}     ${Prestador}    ${Prestador}
    Preencher Campo        ${CampoDtInicial}     ${DtInicial}

Realizar Impressao do Relatorio
    Click no Item    ${BotaoImprimir}
    Sleep  2
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot


