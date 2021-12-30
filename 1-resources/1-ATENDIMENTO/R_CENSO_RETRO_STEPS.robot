##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Altas no Período
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_CENSO_RETRO_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar
    Click no Item                                 ${BotaoImprimir}
    Sleep    2
    Switch Window
    Sleep    5
    Capture Page Screenshot
    
    



