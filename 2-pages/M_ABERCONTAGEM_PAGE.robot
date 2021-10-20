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
${produtoTable}                   xpath=//div[@id='grdItcontagemDaAbertura']//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${produtoTableInput}              xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${motivoTable}                    xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${motivoTableInput}               xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input