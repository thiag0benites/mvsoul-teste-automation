##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoProcesso}                                        xpath=//input[@id='inp:cdProcesso']
${CampoFiltro}                                          xpath=//input[@id='#filterLov']
${CampoValorBruto}                                      xpath=//input[@id='inp:vlMoedaBruto']
${CampoNrDocumento}                                     xpath=//input[@id='inp:conPag_nrDocumento']
${CampoDescrComprom}                                    xpath=//input[@id='inp:dsConPag']
${CampoContaCusto}                                      xpath=//*[@id="CGM_TAB_1_PAGE_3_grdRatconPag"]/div[4]/div[3]/div/div/div[5]
${CampoVlCompart}                                       xpath=//*[@id="CGM_TAB_1_PAGE_3_grdRatconPag"]/div[4]/div[3]/div/div/div[13]
${CampoEditVlCompart}                                   xpath=//input[@class='editor-text mode-edit']
${CampoAcrescimo}                                       xpath=//input[@id='inp:vlMoedaAcres']


### BOTOES ###
${BtnProcesso}                                          xpath=//*[@id="cdProcesso"]/button
${BtnFiltrar}                                           xpath=//button[@id='btfilter']
${BtnOkFiltro}                                          xpath=//button[@id='btok']
${BtnTipoDoc}                                           xpath=//*[@id="cdTipDoc"]/button
${BtnFornecedor}                                        xpath=//*[@id="cdFornecedor"]/button
${BtnEmpresa}                                           xpath=//*[@id="cdMultiEmpresa"]/button
${AbaCompartil}                                         xpath=//a[@id='CGM_TAB_1_CGM_TAB_1_tab2']
${BtnSetor}                                             xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnCampoCusto}                                        xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${AbaImpostos}                                          xpath=//a[@id='CGM_TAB_1_CGM_TAB_1_tab1']
${BtnCodImposto}                                        xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${AbaParcelamento}                                      xpath=//a[@id='CGM_TAB_1_CGM_TAB_1_tab0']
${BtnSalvar}                                            xpath=//li[@id='tb-record-save']
${BtnMsgAlerta}                                         xpath=//button[@class='btn btn-primary'][contains(text(),"Antecipa")]
${BtnOkAlertaMsg}                                       xpath=//button[@class='btn btn-primary'][contains(text(),"Sim")]
${BtnAcrescimo}                                         xpath=//*[@id="cdAcrescimo"]/button


### DIVERSOS ###
${ValidCampoProcessoPosit}                               xpath=//input[@id='inp:dspProcesso'][@title='1.2.1.1.1 - Contas a Pagar de Diversos']
${ValidCampoProcessoNegat}                               xpath=//input[@id='inp:dspProcesso'][@title]
${AlertaMsgData}                                         xpath=//p[@class='notifications-item-text'][contains(text(),"Data informada não é um dia útil - Escolha uma das opções")]
${ValidAlertaSalvar}                                     xpath=//p[@class='notifications-item-text'][contains(text(),"Tipo de documento da conta é diferente de serviço, deseja continuar a salvar os impostos?")]
${ValidCodigo}                                           xpath=//input[@id='inp:cdConPag'][@title]
${ValidAcrescimo}                                        xpath=//div[@id='dspDsAcrescimo']//span[@readonly='readonly']
${ValiVlAcrescimo}                                       xpath=//input[@id='inp:vlAcrescimo'][@title='100,00']