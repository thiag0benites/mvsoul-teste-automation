##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Anexo de Pedidos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_DOCUMENTO_ANEXO_PEDIDO_PAGE.robot


*** Variable ***

*** Keywords ***

Preencher Pedido e acessar a Pagina |${Pedido}|
    Click Elemento por titulo    Procurar
    Preencher Campo            ${CampoPedido}            ${Pedido}    309372
    Click Elemento por titulo    Executar Consulta
    Click no Item              ${BotaoOk}
    Click no Item              ${BotaoAcesso}



