##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Importar para o sistema de Patrimônio as notas fiscais de compra de bens patrimoniais registradas no Almoxarifado
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_RECEBE_NOTA_PAGE.robot
Resource                ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***
Selecionar a linha da Nota Fiscal que será tombada 
    [Arguments]    ${codNotaFiscal}            ${timeout}=${60}
    ${elemento}    Set Variable         xpath=//div[contains(@title, '${codNotaFiscal}')]
    Wait Until Element Is Visible       ${elemento}    ${timeout}    O elemento ${elemento} não foi carregado
    Element Should Be Visible           ${elemento}
    Click Elemento por titulo           ${codNotaFiscal}

Clicar no botao [${nomeBtn}]|${cadPacMsgEsperada}|
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Click Element    ${btnSalvar}
        Wait Until Element Is Visible    ${notificacaoGravarRegistro}    5
        Sleep    0.5
        ${msgObtida}    SeleniumLibrary.Get Text    ${notificacaoGravarRegistro}
        IF    "${msgObtida}" != ""
            Should Be Equal As Strings    ${cadPacMsgEsperada}    ${msgObtida}
        ELSE
            Log To Console    *** Mensagem de alerta não foi apresentada!
        END
    ELSE IF    '${nomeBtn}' == 'Realizar Tombamento'
        Wait Until Element Is Visible    ${btnRealizaTombamento}    30
        Sleep    1
        Click Element    ${btnRealizaTombamento}
        # Click Javascript    ${btnInternar}
        Sleep    1
    END