##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Estatística Hospitalar
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_EST_HOSPITALAR_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar
    Click no Item                                 ${BotaoImprimir}
    Sleep    40
    Switch Window
    Sleep    5
    Capture Page Screenshot

    
    



