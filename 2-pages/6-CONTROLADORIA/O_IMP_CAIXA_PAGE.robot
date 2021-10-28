##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3



        

${menuControladoria}                    xpath=//li[@role='presentation']//a[@title='Controladoria']
${menuContabilidade}                    xpath=//a[@title='Contabilidade']
${menuLiberacaoMovimentacoes}           xpath=//a[@title='Liberação de Movimentações']
${menuCaixa}                            xpath=//a[@title='Caixa']

#Inputs

${inputCodConvenio}     id=inp:cdConvenio
${inputCodRemessa}      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]//input

#Buttons
${btnConcluir}          id=PAGE_REMESSA_btnConcluir3
${btnOK}                //button[contains(text(),"OK")]

# Labels 
${campoCodRemessa}     xpath=//div[@class="grid-canvas grid-canvas-top grid-canvas-left"]//div[@class="slick-cell b0 f0 selected ui-fixed-width"]

#Selectors
