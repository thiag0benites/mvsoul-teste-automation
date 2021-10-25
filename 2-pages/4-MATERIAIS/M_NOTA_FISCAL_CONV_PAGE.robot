##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de Solicitação de Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3



#Inputs
${inputCodConvenio}     id=inp:cdConvenio
${inputCodRemessa}      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]//input

#Buttons
${btnConcluir}          id=PAGE_REMESSA_btnConcluir3
${btnOK}                //button[contains(text(),"OK")]

# Labels 
${campoCodRemessa}     xpath=//div[@class="grid-canvas grid-canvas-top grid-canvas-left"]//div[@class="slick-cell b0 f0 selected ui-fixed-width"]

#Selectors
