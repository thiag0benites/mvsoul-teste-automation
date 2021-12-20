##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Passos da tela C_LOG_EXAME_RX
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/9-DIAGNOSTICO_TERAPIA/C_LOG_EXAME_RX_PAGE.robot

*** Variable ***


*** Keywords ***
Pesquisar o numero do pedido de exame |${pedido}|
    Wait Until Element Is Visible      ${cpPedido}       120
    Preencher campo    ${cpPedido}     ${pedido}
    Realcar Elemento Log    ${divListaExame}
    Realcar Elemento Log   ${divListaLog}
    Click Element    ${btnPesqPedido}

Validar logs de movimentacoes de exame |${suite}|${id}|
    Wait Until Element Is Visible    ${divDataLog}    30
    Should Not Be Empty   ${divDataLog}
    ${data}    Get Element Attribute    ${divDataLog}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "dataLog", valor "${data}"
    Should Not Be Empty   ${divDescrMov}
    ${descricao}    Get Element Attribute    ${divDescrMov}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "descrMovimentacao", valor "${descricao}"
    Should Not Be Empty   ${divUsuario}
    ${usuario}    Get Element Attribute    ${divUsuario}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "userLog", valor "${usuario}"

