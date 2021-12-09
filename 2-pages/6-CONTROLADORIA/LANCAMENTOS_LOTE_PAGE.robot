##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPO ###
${CampoEditDescric}                                        xpath=//input[@class='editor-text mode-edit']
${CampoDataFinal}                                          xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${CampoAcesso}                                             xpath=//div[@class='ui-datefield ui-buttoninput ui-widget mode-edit']
${CampoFiltro}                                             xpath=//input[@id='#filterLov']
${CampoDescrComplem}                                       xpath=//input[@id='inp:dsHistorico']
${CampoDataLancamento}                                     xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${CampoDataLancEdit}                                       xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left'][@row='0']
${CampoCodReduzDebt}                                       xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']//div[@data-member='CD_REDUZIDO_DEBITO']
${CampoCodReduzCred}                                       xpath=//div[@class='slick-cell b5 f5 selected ui-fixed-width']//div[@data-member='CD_REDUZIDO_CREDITO']
${CampoValorMoeda}                                         xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width']//div[@data-member='VL_MOEDA_LANCADO']
${CampoHist}                                               xpath=//input[@id='inp:cdHistoricoPadrao']
### BOTAO ###
${BtnDataFinal}                                            xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${BtnGravar}                                               xpath=//li[@id='tb-record-save']
${BtnHistPadrao}                                           xpath=//*[@id="cdHistorico"]/button
${BtnFiltrar}                                              xpath=//button[@id='btfilter']
${BtnOkFiltrar}                                            xpath=//button[@id='btok']
${BtnCalendDataLanc}                                       xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${BtnCodReduzDebt}                                         xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[3]/div/button
${BtnCodReduzCred}                                         xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[6]/div/button
### DIVERSOS ###
${MsgGravar}                                               xpath=//p[@class='notifications-item-text'][contains(text(),"Registros gravados com sucesso")]

## MENU ##
${Controladoria}                                           xpath=//a[@role][@title='Controladoria']
${Contabilidade}                                           xpath=//a[@role][@title='Contabilidade']