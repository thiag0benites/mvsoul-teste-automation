##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo da Tela de solicitação de Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_BAIXA_SOL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher campo de Solicitação |${codSolicitacao}|
    Preencher campo  ${inputSolicitacao}     ${codSolicitacao}  

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