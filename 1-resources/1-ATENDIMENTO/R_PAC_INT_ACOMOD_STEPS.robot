##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Pacientes Internados por Tipo de Acomodação
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_PAC_INT_ACOMOD_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar
    Click no Item                                 ${BotaoImprimir}
    Sleep    2
    Switch Window
    Sleep    5
    Capture Page Screenshot
    
    



