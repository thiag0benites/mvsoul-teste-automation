##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Gerar nota fisal de convenio, com sucesso.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/M_NOTA_FISCAL_CONV_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher campo de Convenio |${codConvenio}|
    Preencher campo  ${inputCodConvenio}     ${codConvenio}  


Preencher campo de Remessa |${codRemessa}|
    Preencher campo  ${inputCodRemessa}     ${codRemessa}  

Clicar no campo [${nomeCampo}]
    IF    '${nomeCampo}' == 'Remessa'
        Wait Until Element Is Visible    ${campoCodRemessa}    120
        Sleep    1
        Click Element    ${campoCodRemessa}
        # Click Javascript    ${btnInternar}
        Sleep    1
    ELSE IF    '${nomeCampo}' == 'Concluir'
        Wait Until Element Is Visible    ${btnConcluir}    30
        Sleep    1
        Click Element    ${btnConcluir}
        # Click Javascript    ${btnInternar}
        Sleep    1
    ELSE IF    '${nomeCampo}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    30
        Sleep    1
        Click Element    ${btnOk}
        # Click Javascript    ${btnInternar}
        Sleep    1
    END

#Clicar no botao [${nomeBtn}]
# Clicar no botao [${nomeBtn}]|${cadPacMsgEsperada}|
#     IF    '${nomeBtn}' == 'Salvar'
#         Wait Until Element Is Visible    ${btnSalvar}    60
#         Click Element    ${btnSalvar}
#         Wait Until Element Is Visible    ${notificacaoGravarRegistro}    5
#         Sleep    0.5
#         ${msgObtida}    Get Text    ${notificacaoGravarRegistro}
#         IF    "${msgObtida}" != ""
#             Should Be Equal As Strings    ${cadPacMsgEsperada}    ${msgObtida}
#         ELSE
#             Log To Console    *** Mensagem de alerta não foi apresentada!
#         END
#     ELSE IF    '${nomeBtn}' == 'Retornar'
#         Wait Until Element Is Visible    ${btnRetornar}    30
#         Sleep    1
#         Click Element    ${btnRetornar}
#         Sleep    1
#     ELSE IF    '${nomeBtn}' == 'Sim'
#         Wait Until Element Is Visible    ${btnSim}    30
#         Sleep    1
#         Click Element    ${btnSim}
#         Sleep    1
#     ELSE IF    '${nomeBtn}' == '1 - Visualizar os Produtos'
#         Wait Until Element Is Visible    ${btnVisualizarProdutos}    30
#         Sleep    1
#         Click Element    ${btnVisualizarProdutos}
#         Sleep    1
#     ELSE IF    '${nomeBtn}' == '7 - Retornar'
#         Wait Until Element Is Visible    ${btnRetorna}    30
#         Sleep    1
#         Click Element    ${btnRetorna}
#         Sleep    1
#     ELSE IF    '${nomeBtn}' == '1 - Visualizar os Produtos'
#         Wait Until Element Is Visible    ${btnVisualizarProdutos}    30
#         Sleep    1
#         Click Element    ${btnVisualizarProdutos}
#         Sleep    1
#     END

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
    ELSE IF    '${nomeBtn}' == 'Concluir'
        Wait Until Element Is Visible    ${btnConcluir}    30
        Sleep    1
        Click Element    ${btnConcluir}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    30
        Sleep    1
        Click Element    ${btnOk}
        Sleep    3
    END