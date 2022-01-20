##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: C_MOV_CARDAPIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_LOCALIDADE_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenLocalidades} 

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

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Adicionar'
        Wait Until Element Is Visible    ${cpSala}    180
        Click Element       ${cpSala}  
        Sleep    4
        Click Element    ${btnAdicionar}
    ELSE IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    2
        Click Element    ${btnSalvar}
        Sleep       6
    END

Preencher Campos Descricao|${descricao}|, Responsavel|${responsavel}|
    Sleep       3
    Preencher campo    ${cpdescricao}     ${descricao}
    Sleep       3
    Press Keys           ${cpdescricao}         ENTER
    Preencher Campo     ${cpResponsavel}     ${responsavel}
    Sleep       2

