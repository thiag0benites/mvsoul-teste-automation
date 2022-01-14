##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_GASTO_SALA 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_GASTO_SALA_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher o campo Aviso Cirurgia|${aviso}|
    Wait Until Element Is Visible       ${cpAviso}          120
    Preencher campo         ${cpAviso}          ${aviso}
    Sleep       3

Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'pesquisar'
        Wait Until Element Is Visible    ${btnPesquisar}    240
        Sleep       4
        Click Link    ${btnPesquisar}
    ELSE IF    '${nomeBtn}' == 'executar'
        Wait Until Element Is Visible    ${btnExecutar}    30
        Sleep       4
        Click Link    ${btnExecutar}
        Sleep       6
    ELSE IF    '${nomeBtn}' == 'imprimir'
        Wait Until Element Is Visible    ${btnImprimir}    30
        Sleep        4
        Click Element    ${btnImprimir}
        Sleep         6
    ELSE IF    '${nomeBtn}' == 'imprimir2'
        Wait Until Element Is Visible    ${btnImprimir2}    30
        Sleep    1
        Click Element    ${btnImprimir2}
        Sleep    6
    END

Captura codigo|${suite}|${id}|
    Sleep    1
    Should Not Be Empty    ${nomeProduto}
    ${nomeProd}    Get Element Attribute    ${nomeProduto}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "produto", valor "${nomeProd}"
    Sleep    3

Valida aba browser
    Sleep       4
    Switch Window