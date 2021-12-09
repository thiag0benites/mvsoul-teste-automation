##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de C_LOTE
${campoLote}                        xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
