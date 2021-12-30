##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/R_ENTRADA_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Intervalo Fixo |${DataIni}| |${DataFim}|
    Wait Until Element Is Visible      ${CampoDataIni}        250
    Preencher Campo                    ${CampoDataIni}        ${DataIni}
    Preencher Campo                    ${CampoDataFim}        ${DataFim}
    

Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
