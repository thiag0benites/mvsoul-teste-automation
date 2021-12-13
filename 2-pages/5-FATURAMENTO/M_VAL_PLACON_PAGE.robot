##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_VAL_PLACON
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoConvenioInput}          xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input
${campoProcedimentoInput}      xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[4]/div/input
${campoVigenciaInput}          xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[5]/div/input[2]
${campoValorInput}             xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset/div/div/div[4]/div[3]/div/div/div[13]/input


${campoConvenio}          xpath=//div[@class="slick-cell b1 f1 selected"]
${campoProcedimento}      xpath=//div[@class="slick-cell b3 f3 selected"]
${campoVigencia}          xpath=//div[@class="slick-cell b4 f4 selected"]
${campoValor}             xpath=//div[@class="slick-cell b12 f12 slick-last-cell selected"]

# ${campoCentroDestinoInput}     xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b7 f7 selected active editable"]//input[@row="1"]
# ${campoDescContaInput}         xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b9 f9 selected active editable"]//input[@row="1"]

# ${campoEmpresaDestino}    xpath=//div[@class="slick-cell b5 f5 selected"]//div[@data-row="1"]
# ${campoCentroDestino}     xpath=//div[@class="slick-cell b7 f7 selected"]//div[@data-row="1"]
# ${campoDescConta}         xpath=//div[@class="slick-cell b9 f9 selected"]//div[@data-row="1"]

# ${btnExportar}            xpath=//button[@id="btnImporta"]


${MensagemToast}          xpath=//p[@class="notifications-item-text"] 
# ${btnOk}                  xpath=//li[@class="notification-buttons"]/button[text()="OK"] 


