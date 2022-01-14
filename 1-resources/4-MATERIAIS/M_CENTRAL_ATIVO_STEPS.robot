##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_CENTRAL_ATIVO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CENTRAL_ATIVO_PAGE.robot

*** Variable ***

*** Keywords ***

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'dar baixa'
        Wait Until Element Is Visible    ${btnBaixa}    240
        Sleep       2
        Click Button    ${btnBaixa}
    ELSE IF    '${nomeBtn}' == 'sim'
        Wait Until Element Is Visible    ${btnSim}    30
        Sleep       4
        Click Element    ${btnSim}
        Sleep       2
    ELSE IF    '${nomeBtn}' == 'sim2'
        Wait Until Element Is Visible    ${btnSim2}    30
        Sleep        4
        Click Element    ${btnSim2}
        Sleep         2
    ELSE IF    '${nomeBtn}' == 'sim3'
        Wait Until Element Is Visible    ${btnSim3}    30
        Sleep    1
        Click Element    ${btnSim3}
        Sleep    8
    END

Preencher o campo Tombamento Inicial|${tombamentoInicial}|, Tombamento Final|${tombamentoFinal}|
    Wait Until Element Is Visible       ${cpTombInicial}            240
    Preencher campo         ${cpTombInicial}        ${tombamentoInicial}
    Sleep       3
    Preencher campo         ${cpTombFinal}          ${tombamentoFinal}
    Sleep       3

Pesquisar Despesa operacional|${ambos}|
    Preencher campo        ${cpAmbos}      ${ambos}  
    Sleep       2
    Click Element       ${btnPesquisa}
    Sleep       2

Selecionar Produto
    Click Element       ${checkProd}
    Sleep       2

Preencher o campo Data|${dtBaixa}|, motivo|${motivo}|
    Preencher campo         ${cpDtBaixa}        ${dtBaixa}
    Sleep       2
    Preencher campo         ${cpMotivo}         ${motivo}
    Press Keys          ${cpMotivo}         ENTER
    Sleep       2