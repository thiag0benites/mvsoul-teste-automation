##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela C_SOLCOM 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_SOLCOM_PAGE.robot

*** Variable ***


*** Keywords ***

Preencher Campo codigo |${codigo}|
    Wait Until Element Is Visible      ${cpCodigo}       30
    Click Element       ${cpCodigo}
    Preencher Campo        ${cpCodigo}       ${codigo} 
    Sleep      3

    
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Executar'
        Wait Until Element Is Visible    ${btnExecutar}    60
        Click Element    ${btnExecutar}
        Sleep    3
    ELSE IF     '${nomeBtn}' == 'Histórico de Autorização'
        Wait Until Element Is Visible    ${btnHistorico}    60
        Click Button    ${btnHistorico}
        Sleep    3
    END

Validar exibicao do pop up Historico
    Wait Until Element Is Visible    ${popUpHistorico}    60
    Sleep       1
    Wait Until Element Is Visible       ${cpUsuario}     60
    Sleep       1
    Wait Until Element Is Visible       ${cpNivAutorizador}     60
    Sleep       1
    


