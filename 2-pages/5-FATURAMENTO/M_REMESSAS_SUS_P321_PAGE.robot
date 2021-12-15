##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${btnAdicionar}                         xpath=//li[@id='toolbar']//li[@id='tb-record-add']
${ElementoMsgRecebida}                  xpath=//p[@class='notifications-item-text']
${btnSalvar}                            xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${competenciaTableInput}                xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset[2]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[1]/div/input[2]
${descricaoTable}                       xpath=//div[@class='slick-cell b1 f1 selected']
${descricaoTableInput}                  xpath=//div[@class='slick-cell b1 f1 selected active editable']//input