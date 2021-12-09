##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoProduto}    xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoUnidade}    xpath=//div[@class='slick-cell b2 f2 selected']
${campoUnidadeInput}    xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoLote}      xpath=//div[@class='slick-cell b3 f3 selected']
${campoLoteInput}    xpath=//div[@class='slick-cell b3 f3 selected active editable']//input
${campoQtd}       xpath=//div[@class='slick-cell b5 f5 selected']
${campoQtdInput}    xpath=//div[@class='slick-cell b5 f5 selected active editable']//input
