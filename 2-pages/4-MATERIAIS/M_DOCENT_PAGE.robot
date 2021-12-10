##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Documento de Entrada
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovFornecedor}                        xpath=//div[@id="cdFornecedor"]/button
${CampoNrDocumento}                          xpath=//input[@id="inp:nrDocumento"]
${CampoSerie}                                xpath=//input[@id="inp:nrSerie"]
${BotaoLovTpDocumento}                       xpath=//div[@id="cdTipDoc"]/button 
${CampoDtEmissao}                            xpath=//input[@id="inp:dtEmissao"]
${CampoDtEntrada}                            xpath=//input[@id="inp:dtEntrada"]
${BotaoLovCFOP}                              xpath=//div[@id="nrCfop"]/button
${CampoVlTotal}                              xpath=//input[@id="inp:vlTotal"]  
${CampoParcela}                              xpath=//div[@data-member="CD_PARCELA"]/..
${MensagemToast}                             xpath=//p[@class="notifications-item-text"]
${BotaoOK}                                   xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${CampoEditavel}                             xpath=//input[@class="editor-text mode-edit"]
${CampoDtVencimento}                         xpath=//div[@data-member="DT_VENCIMENTO"]/..
${CampoDtVencimentoEdit}                     xpath=//div[@class="ui-datefield ui-buttoninput ui-widget mode-edit"]//input[@type="text"]
${CampoVlParcela}                            xpath=//div[@data-member="VL_PARCELA"]/..
${MensagemSalvar}                            xpath=//div[@class="notifications-item-body"]/p
${BotaoNao}                                  xpath=//li[@class="notification-buttons"]/button[text()="Não"]
${CampoFornecedor}                           xpath=//input[@id="inp:cdFornecedor"] 
${BotaoSim}                                  xpath=//li[@class="notification-buttons"]/button[text()="Sim"]

