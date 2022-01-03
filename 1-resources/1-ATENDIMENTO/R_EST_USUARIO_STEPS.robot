##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Relatório de Pacientes Internados em Ordem Alfabética
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/R_EST_USUARIO_PAGE.robot

*** Variable ***

*** Keywords ***
Click Botao Pesquisar |${DtIn}||${TpAtend}|
    Preencher campo                               ${DtInicial}                  ${DtIn}
    Preencher campo                               ${TipoAtendimento}            ${TpAtend}
    Click no Item                                 ${BotaoImprimir}
    Sleep    5
    Switch Window
    Sleep    5
    Capture Page Screenshot
    
    



