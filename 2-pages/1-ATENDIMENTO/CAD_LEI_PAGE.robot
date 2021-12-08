##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de CAD_LEI
${inputCodigo}              xpath=//input[@id='inp:cdUnidInt']
${btnExecute}               xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnSalvar}                xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnPesquisar}             xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${campoLeito}               xpath=//div[@class='slick-cell b1 f1 selected']//div[@data-row='0']
${campoLeitoInput}          xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoDesc}                xpath=//div[@class='slick-cell b2 f2 selected']
${campoDescInput}           xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoEnferm}              xpath=//div[@class='slick-cell b3 f3 selected']
${campoEnfermInput}         xpath=//div[@class='slick-cell b3 f3 selected active editable']//input
${campoAcomod}              xpath=//div[@class='slick-cell b5 f5 selected']
${campoAcomodInput}         xpath=//div[@class='slick-cell b5 f5 selected active editable']//input
${MensagemSalvar}           xpath=//p[@class="notifications-item-text"]
