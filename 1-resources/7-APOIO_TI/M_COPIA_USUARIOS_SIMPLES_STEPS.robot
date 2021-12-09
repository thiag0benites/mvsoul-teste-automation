##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_COPIA_USUARIOS_SIMPLES.robot
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/7-APOIO_TI/M_COPIA_USUARIOS_SIMPLES_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenCopiaUsuario} 

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

Preencher os campos Usuario Origem|${usrOrigem}|, Usuario Destino|${usrDestino}|
    Wait Until Element Is Visible    ${cpUsrOrigem}    120
    Preencher Campo        ${cpUsrOrigem}       ${usrOrigem} 
    Sleep      6
    Preencher Campo        ${cpUsrDestino}       ${usrDestino} 
    Press Keys     ${cpUsrDestino}      ENTER 
    Sleep      4
   

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Copiar Usuario'
        Wait Until Element Is Visible    ${btnCopia}    30
        Sleep    1
        Click Element    ${btnCopia}
    ELSE IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    30
        Sleep    1
        Click Element    ${btnOk}
    ELSE IF    '${nomeBtn}' == 'OK2'
        Wait Until Element Is Visible    ${btnOk2}    30
        Sleep    1
        Click Element    ${btnOk2}
    END


    