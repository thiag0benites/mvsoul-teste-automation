##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina 
${btnAdicionar}                             xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${mensagemNotificacao}                      xpath=//p[@class="notifications-item-text"]
${abaRelatorios}                            xpath=//li[2]//a[@id='TAB_CONFIG_TAB_CONFIG_tab1']
${btnSalvar}                                xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoCodigo}                              xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${campoDescricao}                           xpath=//div[@class='slick-cell b2 f2 selected']
${campoDescricaoInput}                      xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
