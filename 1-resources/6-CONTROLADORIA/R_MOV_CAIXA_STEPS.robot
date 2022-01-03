##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De Plano Contábil.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/R_MOV_CAIXA_PAGE.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***

Acessar a tela pelo primeiro registro |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnMenu}
    Preencher Campo    ${HomeXpathInputPesquisa}    ${tela}
    Sleep    2
    Send Keys    TAB
    Send Keys    ENTER
    IF    "${las}" == "@las"
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    120
        Unselect Frame
        Send Keys    tab
        Send Keys    enter
    END
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
Preencher Estoque e Produto |${Empresa}| |${Caixa}|
    Wait Until Element Is Visible      ${CampoEmpresa}        250
    Preencher Campo                    ${CampoEmpresa}        ${Empresa}
    Preencher Campo                    ${CampoCaixa}        ${Caixa}
    
Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
