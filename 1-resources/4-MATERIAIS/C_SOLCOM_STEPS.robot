##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela C_SOLCOM 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_SOLCOM_PAGE.robot

*** Variable ***


*** Keywords ***

Preencher Campo Ano |${codigo}|
    Wait Until Element Is Visible      ${}       240
    Click Element       ${campoAno}
    Preencher Campo        ${campoAno}       ${EMPTY}   
    Click Element       ${campoAno}
    Preencher Campo        ${campoAno}       ${codigo} 
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


