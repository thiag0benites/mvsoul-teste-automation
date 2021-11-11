##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos de Consulta Paciente
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
${prestador}           xpath=/html/body/div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset[2]/div/div[8]/span
#Selectors
