##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Altas no Período
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_ALTAS_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Data|${Data1}|
    Preencher Campo                                ${Dt1}                    ${Data1}


Click Botao Pesquisar
    Click no Item                                 ${BotaoImprimir}
    Switch Window
    Capture Page Screenshot



