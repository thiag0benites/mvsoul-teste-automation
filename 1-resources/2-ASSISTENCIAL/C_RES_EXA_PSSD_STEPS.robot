##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_COTA_SETOR
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_RES_EXA_PSSD_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo    ${HomeXpathBtnPesquisaInput}    ${tela}
    Sleep    1
    Click Element    ${ScreenBaixaProdutos}
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

Preencher o campo Amostra|${amostra}|
    Wait Until Element Is Visible    ${cpAmostra}    240
    Preencher Campo    ${cpAmostra}    ${amostra}
    Press Keys    ${cpAmostra}    ENTER
    Sleep    15

Selecionar checbox [Impresso]
    Wait Until Element Is Visible    ${CheckImpresso}    120
    Click Element    ${CheckImpresso}
    Sleep    3

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Imprimir'
        Wait Until Element Is Visible    ${btnImprimir}    30
        Sleep    1
        Click Element    ${btnImprimir}
    END

Valida aba Browser
    Sleep    6
    Switch Window
    Sleep    3
