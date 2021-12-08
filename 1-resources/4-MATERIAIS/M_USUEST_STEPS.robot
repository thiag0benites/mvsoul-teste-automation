##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/M_USUEST_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tela |${usuario}|,|${estoque}|
    Preencher campo                     ${campoUsuario}                ${usuario}
    Click no Item                       ${campoEstoque}          
    Preencher campo                     ${campoEstoqueInput}           ${estoque}

Marcar os checkbox
    Click no Item  ${checkboxAbrir}
    Click no Item  ${checkboxConferir}
    Click no Item  ${checkboxValidar}

Clicar no botao e salvar cadastro
    Click no Item  ${btnSalvar}

Validar o cadastro realizado |${mensagem}|
    Valida Mensagem         ${MensagemSalvar}          ${mensagem}