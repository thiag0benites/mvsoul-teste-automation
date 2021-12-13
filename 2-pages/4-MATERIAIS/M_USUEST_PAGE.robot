##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${checkboxAbrir}    xpath=//button[@id='inp:snPodeAbrirConferenciaEntr_btn']
${checkboxConferir}    xpath=//button[@id='inp:snPodeConferirConfeEntr_btn']
${checkboxValidar}    xpath=//button[@id='inp:snPodeValidarConfeEntr_btn']
${MensagemSalvar}    xpath=//p[@class="notifications-item-text"]
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoUsuario}    xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoEstoque}    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${campoEstoqueInput}    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
