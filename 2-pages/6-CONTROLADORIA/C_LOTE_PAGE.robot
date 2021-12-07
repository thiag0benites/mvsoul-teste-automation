##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de C_LOTE
${campoLote}                             xpath=//div[@class='slick-cell b2 f2 selected']
${campoLoteInput}                        xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${btnExecute}                            xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
