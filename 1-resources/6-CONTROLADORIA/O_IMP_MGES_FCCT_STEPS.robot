##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela O_IMP_MGES_FNFI
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_IMP_MGES_FCCT_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenImportEstoque} 

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


Preencher campo Data processamento |${dtProcessamento}|
    Wait Until Element Is Visible    ${cpDtProcessamento}    120
    Preencher Campo        ${cpDtProcessamento}       ${dtProcessamento} 
    Sleep      6

Selecionar o checkBox [Todos]
    Wait Until Element Is Visible    ${checkTodos}    120
    Sleep    3
    Click Element    ${checkTodos}

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Confirmar'
        Wait Until Element Is Visible    ${btnConfirmar}    180
        Sleep    3
        Click Element    ${btnConfirmar} 
    ELSE IF     '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    180
        Sleep    3
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    180
        Sleep    3
    END
    
Captura codigo lote|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${codLote}
    ${nrLote}    Get Element Attribute    ${codLote}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigo", valor "${nrLote}"
    Sleep    3