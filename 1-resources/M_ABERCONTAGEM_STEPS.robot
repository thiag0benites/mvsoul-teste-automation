##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../2-pages/M_ABERCONTAGEM_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher o campo <Estoque>"${estoque}"
    Wait Until Element Is Visible    ${estoqueTable}          120
    Sleep                            3
    SeleniumLibrary.Input Text       ${estoqueTable}          ${estoque}

Clicar no botão Adicionar
    Wait Until Element Is Visible              ${btnAdicionar}                              30
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      3

Usuário deverá preencher o campo <Produto>"${produto}"
    Wait Until Element Is Visible    ${produtoTable}          60
    SeleniumLibrary.Click Element    ${produtoTable}
    Sleep                            3
    SeleniumLibrary.Input Text       ${produtoTableInput}          ${produto}

Clicar no botão salvar Abertura
    Wait Until Element Is Visible              ${btnSalvar}                              30
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      3