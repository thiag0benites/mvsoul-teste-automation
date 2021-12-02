##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_DOC_STATUS
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoCodigo}                                          xpath=//div[@class="ui-widget-content slick-row even active"]//div[@class="slick-cell b0 f0 selected ui-fixed-width active editable"]//input[@row="0"]
${campoObservacao}                                      xpath=//input[@id="inp:dsHistorico"]
${campoDataVencimento}                                  xpath=//input[@id="inp:nvDtVencimento"]
${btnAlteraData}                                        xpath=//button[@id="btnNovaData"]


${MensagemToast}                                        xpath=//p[@class="notifications-item-text"] 
${btnOk}                                                xpath=//li[@class="notification-buttons"]/button[text()="OK"] 



