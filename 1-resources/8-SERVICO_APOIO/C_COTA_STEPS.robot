##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: C_CEP
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_COTA_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenCep} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    #### End LAS Send Keys #####
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Sleep    60

Preencher Campo Competencia|${competencia}|
    Wait Until Element Is Visible       ${cpCompetencia}         240
    Preencher Campo         ${cpCompetencia}         ${competencia}
    Press Keys          ${cpCompetencia}         ENTER
    Sleep       3
     
Captura codigo|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${cpCodCota}
    ${codigo}    Get Element Attribute    ${cpCodCota}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codCota", valor "${codigo}"
    Sleep    4
