##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${numOrdem}             xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${numOrdemInput}        xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${imprimirOrdCom}       xpath=//button[@data-member='BTN_GERAR_RELATORIO']