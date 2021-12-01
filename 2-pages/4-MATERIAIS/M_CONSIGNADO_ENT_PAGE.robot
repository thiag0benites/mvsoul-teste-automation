##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Entrada de Consignado
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoTpConsignacao}                                xpath=//input[@id="tpTransitorioPermanente_ac"]
${BotaoLovEstoque}                                   xpath=//div[@id="cdEstoque"]/button
${CampoGerarAplDireta}                               xpath=//input[@id="tpAplicDireta_ac"]  
${CampoDtEmissao}                                    xpath=//input[@id="inp:dtEmissao"]
${CampoDtEntrada}                                    xpath=//input[@id="inp:dtEntrada"]
${CampoNrDocumento}                                  xpath=//input[@id="inp:nrDocumento"]
${CampoNrSerie}                                      xpath=//input[@id="inp:nrSerie"]
${BotaoLovFornecedor}                                xpath=//div[@id="cdFornecedor"]/button
${BotaoLovCFOP}                                      xpath=//div[@id="nrCfop"]/button
${CampoProduto}                                      xpath=//div[@data-member="CD_PRODUTO"]/..
${BotaoLov}                                          xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button            
${CampoQtdEntrada}                                   xpath=//div[@data-member="QT_ENTRADA"]/..
${CampoEditavel}                                     xpath=//input[@class="editor-text mode-edit"] 
${CampoVlUnitario}                                   xpath=//div[@data-member="VL_UNITARIO"]/..
${CampoLote}                                         xpath=//div[@data-member="CD_LOTE"]/..
${CampoValidade}                                     xpath=//div[@data-member="DT_VALIDADE"]/..
${CampoValidadeEdit}                                 xpath=//div[@class="ui-datefield ui-buttoninput ui-widget mode-edit"]/input[@type="text"]
${CampoQtdEntradaLote}                               xpath=//div[@data-member="QT_ENT_PRO"]/..
${CampoLoteEdit}                                     xpath=//input[@class="editor-text ui-state-readonly mode-read"]        
${BotaoConcluirAvaliar}                              xpath=//button[@id="btnConcluir"]  
${MensagemToast}                                     xpath=//p[@class="notifications-item-text"]   
${MensagemToast2}                                    xpath=//div[@class="notifications-item-body"]/p
${BotaoOK}                                           xpath=//li[@class="notification-buttons"]/button[text()="OK"]  
${BotaoSim}                                          xpath=//li[@class="notification-buttons"]/button[text()="Sim"]  
${CampoEstoquePreenchido}                            xpath=//span[@title="ALMOXARIFADO"]