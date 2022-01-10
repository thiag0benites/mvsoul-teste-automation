##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/R_TIPPRESC_ESQUEMA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Parametros do Relatorio |${DtInicial}| |${Esquema}|
    Preencher Campo    ${CampoDtInicial}     ${DtInicial}
    Selecionar Item Na Lista    ${BotaoLovEsquema}    ${Esquema}    ${Esquema}

Imprimir Relatorio
    Click no Item    ${BotaoImprimir} 
    Sleep  30
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot