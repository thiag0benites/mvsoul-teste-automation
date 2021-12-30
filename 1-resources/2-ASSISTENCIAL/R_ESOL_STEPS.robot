##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/R_ESOL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Parametros do Relatorio |${Prescricao}|
    Selecionar Item Na Lista    ${BotaoLovPrescricao}    ${Prescricao}    ${Prescricao}

Imprimir Relatorio
    Click no Item    ${BotaoImprimir} 
    Sleep  2
    Switch Window    NEW
    Sleep  5
    Capture Page Screenshot