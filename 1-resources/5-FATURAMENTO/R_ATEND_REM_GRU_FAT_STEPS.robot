##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta APAC
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/R_ATEND_REM_GRU_FAT_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar|${NRemessa}|
    Preencher campo                               ${CRemessa}                   ${NRemessa}
    Click no Item                                 ${BotaoImprimir}
    Sleep    5
    Switch Window
    Sleep    2
    Capture Page Screenshot
   
