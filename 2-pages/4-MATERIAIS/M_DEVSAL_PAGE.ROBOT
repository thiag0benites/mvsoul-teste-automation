##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoAvisoCirurgia}                   xpath=//input[@id='inp:cdAvisoCirurgia'] 
${CampoMotivoDev}                       xpath=//input[@id='inp:cdMotDev']
${CampoCodBarra}                        xpath=//div[@data-member="DSP_CODIGO_DE_BARRAS"][@data-row="0"]/..
${CampoProduto}                         xpath=//div[@data-member="CD_PRODUTO"][@data-row="0"]/..
${CampoProdutoEdit}                     xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQtdeRecebida}                    xpath=//div[@data-member="QT_MOVIMENTACAO"][@data-row="0"]/..
${CampoQtdeRecebidaEdit}                xpath=//input[@class="editor-text mode-edit"]
### Botoes ###


${btnSalvar}                            xpath=//li[@id='tb-record-save']
${BtnCodBarras}                         xpath=//div[@class=" ui-layout-positional ui-framepanel-content MVTituloDescricao"]/button[@id='btnCdProduto']
${BtnSimPopUp}                          xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnOk}                                xpath=//li[@class='notification-buttons']/button
${BtnConcluir}                          xpath=//button[@id='btnConcluir']



### Diversos ###
${Alerta}                               xpath=//div[@class='notifications-item-body notification-item-no-title']/p