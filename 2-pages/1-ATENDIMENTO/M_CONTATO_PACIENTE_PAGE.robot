##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina 
${campoDdd1}                                xpath=//div[@class='slick-cell b1 f1 selected']
${campoDdd1Input}                           xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoDdd2}                                xpath=//div[@class='slick-cell b2 f2 selected']
${campoDdd2Input}                           xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoTelefone}                            xpath=//div[@class='slick-cell b3 f3 selected']
${campoTelefoneInput}                       xpath=//div[@class='slick-cell b3 f3 selected active editable']//input
${btnSimNotificacao}                        xpath=//li[@class='notification-buttons']//button[2]
${btnContato}                               xpath=//button[@id='btnContatoPaciente']
${btnAdicionar}                             xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${btnSalvar}                                xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnPesquisar}                             xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecute}                               xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${modalNotificacao}                         xpath=//p[@class="notifications-item-text"]