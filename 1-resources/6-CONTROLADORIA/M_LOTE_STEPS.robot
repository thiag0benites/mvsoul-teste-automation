##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_LOTE_PAGE.robot
Library    SeleniumLibrary

*** Variable ***


*** Keywords ***
Acessar "M_LOTE"${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       M_LOTE
    Sleep    1
    Click Element    ${ScreenCadastroFechamentoLote} 

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

Preencher campo Descrição |${descricao}|
    Wait Until Element Is Visible      ${cpDescricao}       240
    Click Element       ${cpDescricao}
    Preencher Campo        ${cpDescricao}       ${descricao}   
    Press Keys    ${cpDescricao}    ENTER
    Sleep      3

Preencher campo Data final |${dataFinal}| a data do lançamento final do lote
    Click Element       ${dtFinal}
    Wait Until Element Is Visible       ${inputDtFinal}     30
    Click Element       ${inputDtFinal}
    Preencher Campo        ${inputDtFinal}       ${dataFinal}
    #Press Keys    ${dtFinal}    ENTER
    Sleep      3
   
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Click Element    ${btnSalvar}
        Sleep    3
    END

Clicar duas vezes no campo [Lote] ou [Descrição]
    Wait Until Element Is Visible    ${cpDescricaoPs}    10
    Double Click Element       ${cpDescricaoPs}
    Sleep       3
