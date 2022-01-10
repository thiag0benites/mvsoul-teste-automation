##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoCompetencia}                                        xpath=//input[@id='inp:dtCompetencia']

### BOTOES ###
${BtnCalendCompetencia}                                    xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon ui-state-default']            
${BtnConsultar}                                            xpath=//*[@id="btnConsultar"]
${BtnAlertaSimParaTodos}                                   xpath=//button[@class='btn btn-primary'][contains(text(),"Sim Todos")]
${CkBoxTodos}                                              xpath=//button[@id='inp:ckbTodos_btn']
${BtnConfirmar}                                            xpath=//*[@id="btnConfirmar"]
${BtnPagarTodos}                                           xpath=//*[@id="btnPagarTodos"]
${BtnOkAlerta}                                             xpath=//button[@class='btn btn-primary']
${BtnPagarAtual}                                           xpath=//button[@id='btnPagarAtual']
${ChBoxBaixa}                                              xpath=//*[@id="grdLogRepassePagamento"]/div[4]/div[3]/div/div[1]/div[2]/div/button
${ChBoxBaixa2}                                             xpath=//*[@id="grdLogRepassePagamento"]/div[4]/div[3]/div/div[2]/div[2]/div/button
${BtnSalvar}                                               xpath=//li[@id='tb-record-save']
${BtnImpir}                                                xpath=//button[@id='btnImprimir']
${BtnImprimirLog}                                          xpath=(//button[@data-member='BTN_IMPRIMIR'])[2]
${BtnSimAlertaImp}                                         xpath=//button[@class='btn btn-primary'][contains(text(),"Sim")]
${BtnImprimirLogPagto}                                     xpath=(//button[@data-member='BTN_IMPRIMIR'])[2]
### DIVERSOS ###
${MsgUsuarioAlerta}                                        xpath=//p[@class='notifications-item-text']
${MsgGravSucesso}                                          xpath=//div[@class='notifications-item-body']
