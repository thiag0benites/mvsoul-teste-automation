##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoDataInicial}                     xpath=//input[@id="inp:dtInicial"]
${CampoProduto}                         xpath=//input[@id="inp:cdProduto"]
${CampoCod}                             xpath=//input[@class="editor-text ui-state-readonly mode-read"]
### Botoes ###


${btnSalvar}                            xpath=//li[@id='tb-record-save']
${BtnOk}                                xpath=//li[@class='notification-buttons']/button
${BtnProduto}                           xpath=//div[@data-member="CD_PRODUTO"]/button
${BtnSimPopUp}                          xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnExePesq}                           xpath=//li[@id="tb-execute"]/a[@data-action="EXECUTE_QUERY"]







### Diversos ###
${Alerta}                               xpath=//div[@class='notifications-item-body notification-item-no-title']/p