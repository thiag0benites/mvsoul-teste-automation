##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Cobranças e tabelas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/DEVDOCPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Same Geral
    Wait Until Element Is Visible    ${reticencias}    180
    Click Element    ${reticencias}
    Sleep    3
    click Element    ${same}
    Sleep    3
    Click Button    ${bntOk}
    Sleep    3
    Click Button    ${btnAcessar}

Clicar no botao [Pesquisar]
    Wait Until Element Is Visible    ${btnConsultar}    180
    Click Element    ${btnConsultar}
    Sleep    3

Informar o Protocolo |${protocolo}|
    Preencher Campo    ${cpProtocolo}    ${protocolo}
    Sleep    3

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    ELSE IF    '${nomeBtn}' == 'Imprimir'
        Wait Until Element Is Visible    ${btnImprimir}    30
        Sleep    1
        Click Element    ${btnImprimir}
    END

Selecionar impressao Tela
    Wait Until Element Is Visible    ${btnEscolhaImpressao}    180
    Click Element    ${btnEscolhaImpressao}
    Sleep    3
    Click Element    ${elemTela}
    Sleep    3

Valida aba do browser
    Switch Window
    Sleep    8
