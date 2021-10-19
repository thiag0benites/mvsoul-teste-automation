##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de Contagem - Abertura de inventário
${estoqueTable}                   xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${btnAdicionar}                   xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${produtoTable}                   xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${produtoTableInput}              xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${btnSalvar}                      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a