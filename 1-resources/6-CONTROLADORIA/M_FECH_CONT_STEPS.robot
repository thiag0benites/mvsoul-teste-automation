##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_FECH_CONT - fechamento do exercício contábil. 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_FECH_CONT_PAGE.robot

*** Variable ***


*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenCadastroFechamento} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    60
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

Preencher Campo Ano |${cpAno}|
    Wait Until Element Is Visible      ${campoAno}       240
    Click Element       ${campoAno}
    Preencher Campo        ${campoAno}       ${EMPTY}   
    Click Element       ${campoAno}
    Preencher Campo        ${campoAno}       ${cpAno} 
    Press Keys    ${campoAno}    ENTER
    Sleep      3

Selecionar o mês
    Wait Until Element Is Visible    ${mesFech}    60
    Click Element       ${mesFech}
    Sleep       3

Selecionar a Empresa
    Wait Until Element Is Visible    ${empresa}    60
    Click Element       ${empresa}
    Sleep       3
    
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Fechar'
        Wait Until Element Is Visible    ${btnFechar}    60
        Click Element    ${btnFechar}
        Sleep    3
    ELSE IF     '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    60
        Click Element    ${btnOk}
        Sleep    3
    ELSE IF     '${nomeBtn}' == 'Abrir'
        Wait Until Element Is Visible    ${btnAbrir}    60
        Click Element    ${btnAbrir}
        Sleep    3
    END


