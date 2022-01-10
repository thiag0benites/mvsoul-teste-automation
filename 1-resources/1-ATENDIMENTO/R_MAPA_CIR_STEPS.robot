##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Relatório de Mapa Cirúrgico
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_MAPA_CIR_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar|${DtIn}|
    Preencher campo                               ${DtInicial}                   ${DtIn}
    Click no Item                                 ${BotaoImprimir}
    Sleep    8
    Switch Window
    Sleep    5
    Capture Page Screenshot
   
    
    



