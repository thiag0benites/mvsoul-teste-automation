##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/R_BALANCO_CONTABIL_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Estoque |${Estoque}|
    Wait Until Element Is Visible      ${CampoEstoque}        250
    Preencher Campo                    ${CampoEstoque}        ${Estoque}
    Send Keys    TAB
    Click no Item                      ${BotaoOK} 
Preencher Intervalo Fixo |${DataIni}|
    Preencher Campo                    ${CampoDataComp}        ${DataIni}

    

Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
