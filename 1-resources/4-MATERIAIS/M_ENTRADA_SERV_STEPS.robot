##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Entrada dos Serviços
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ENTRADA_SERV_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campo Ord Compra
    Selecionar Item Na Lista                ${BotaoLovOrdCompra}        1000 MARCAS LTDA        1000 MARCAS LTDA

Preencher Campo Tipo de Documento
    Selecionar Item Na Lista                ${BotaoLovTpDoc}            RECIBO                  RECIBO

    