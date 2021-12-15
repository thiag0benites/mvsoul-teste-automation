##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${ElementoMsgRecebida}    xpath=//p[@class='notifications-item-text']
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoServico}    xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[1]/div/input
${btnAdicionar}    xpath=//li[@id='toolbar']//li[@id='tb-record-add']
${campoProcedimento}    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${campoProcedimentoInput}    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoCBO}       xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${campoCBOInput}    xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${btnSim}         xpath=//li[@class='notification-buttons']//button[1]
