##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_SOLIC_LIMPEZA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${vigenciaInput}          xpath=//div[@class="slick-cell b0 f0 selected active editable"]//input[@row="1"]
${centroRegraInput}       xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input[@row="1"]
${centroOrigemInput}      xpath=//div[@class="slick-cell b3 f3 selected active editable"]//input[@row="1"]
${empresaDestinoInput}    xpath=//div[@class="slick-cell b5 f5 selected active editable"]//input[@row="1"]
${centroDestinoInput}     xpath=//div[@class="slick-cell b7 f7 selected active editable"]//input[@row="1"]
${descContaInput}         xpath=//div[@class="slick-cell b9 f9 selected active editable"]//input[@row="1"]

${labelVigencia}          xpath=//div[@class="slick-cell b0 f0 selected active editable"]//input[@row="1"]
${labelCentroRegra}       xpath=//div[@class="slick-cell b1 f1 selected"]//div[@data-row="1"]
${labelCentroOrigem}      xpath=//div[@class="slick-cell b3 f3 selected"]//div[@data-row="1"]
${labelEmpresaDestino}    xpath=//div[@class="slick-cell b5 f5 selected"]//div[@data-row="1"]
${labelCentroDestino}     xpath=//div[@class="slick-cell b7 f7 selected"]//div[@data-row="1"]
${labelDescConta}         xpath=//div[@class="slick-cell b9 f9 selected"]//div[@data-row="1"]

${btnExportar}            xpath=//button[@id="btnImporta"]


${MensagemToast}          xpath=//p[@class="notifications-item-text"] 
${btnOk}                  xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${btnSim}                 xpath=//li[@class="notification-buttons"]/button[text()="Sim"]


