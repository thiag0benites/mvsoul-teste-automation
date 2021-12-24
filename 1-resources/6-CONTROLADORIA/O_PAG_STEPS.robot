##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela O_PAG - Pagamentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_PAG_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo    ${HomeXpathBtnPesquisaInput}    ${tela}
    Sleep    6
    Click Element    ${ScreenPagamentos}
    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    320
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

Preencher campo Data Inicio|${dtInicio}|, Data Fim|${dtFim}|, processo|${processo}|, Conta corrente|${cc}|
    Wait Until Element Is Visible    ${cpDtInicio}    180
    Click Element    ${dtPeriodo}
    Preencher campo    ${cpDtInicio}    ${dtInicio}
    Sleep    3
    Preencher campo    ${cpDtFim}    ${dtFim}
    Sleep    3
    Preencher campo    ${cpProcesso}    ${processo}
    Press Keys    ${cpProcesso}    ENTER
    Sleep    8
    Preencher campo    ${cpContaCorrente}    ${cc}
    Press Keys    ${cpContaCorrente}    ENTER
    Sleep    3

Selecionar titulo a pagar
    Wait Until Element Is Visible    ${checkBox}    30
    Click Element    ${checkBox}
    Sleep    2

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Efetuar Pagamento'
        Wait Until Element Is Visible    ${btnPagar}    60
        Click Element    ${btnPagar}
        Sleep    3
    ELSE IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    60
        Click Element    ${btnOk}
        Sleep    3
    END
