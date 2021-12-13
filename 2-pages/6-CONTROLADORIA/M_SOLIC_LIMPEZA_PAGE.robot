##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_SOLIC_LIMPEZA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoVigenciaInput}          xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset[2]/div/fieldset/div/div/div[4]/div[3]/div/div[2]/div[1]/input
${campoCentroRegraInput}       xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b1 f1 selected active editable"]//input[@row="1"]
${campoCentroOrigemInput}      xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b3 f3 selected active editable"]//input[@row="1"]
${campoEmpresaDestinoInput}    xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b5 f5 selected active editable"]//input[@row="1"]
${campoCentroDestinoInput}     xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b7 f7 selected active editable"]//input[@row="1"]
${campoDescContaInput}         xpath=//div[@class="ui-widget-content slick-row odd active"]//div[@class="slick-cell b9 f9 selected active editable"]//input[@row="1"]

${campoVigencia}          xpath=//div[@class="slick-cell b0 f0 selected"]//div[@data-row="1"]
${campoCentroRegra}       xpath=//div[@class="slick-cell b1 f1 selected"]//div[@data-row="1"]
${campoCentroOrigem}      xpath=//div[@class="slick-cell b3 f3 selected"]//div[@data-row="1"]
${campoEmpresaDestino}    xpath=//div[@class="slick-cell b5 f5 selected"]//div[@data-row="1"]
${campoCentroDestino}     xpath=//div[@class="slick-cell b7 f7 selected"]//div[@data-row="1"]
${campoDescConta}         xpath=//div[@class="slick-cell b9 f9 selected"]//div[@data-row="1"]

${btnExportar}            xpath=//button[@id="btnImporta"]


${MensagemToast}          xpath=//p[@class="notifications-item-text"] 
${btnOk}                  xpath=//li[@class="notification-buttons"]/button[text()="OK"] 


