##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Entrada dos Serviços
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovTpDoc}                              xpath=//div[@id="cdTipDoc"]/button
${BotaoLovOficina}                            xpath=//div[@id="cdOficina"]/button
${CampoNrDoc}                                 xpath=//input[@id="inp:nrDocumento"]
${CampoSerie}                                 xpath=//input[@id="inp:nrSerie"]
${BotaoLovFornecedor}                         xpath=//div[@id="cdFornecedor"]/button
${CampoDtEmissao}                             xpath=//input[@id="inp:dtEmissao"]
${BotaoLovCFOP}                               xpath=//div[@id="nrCfop"]/button
${CampoVlTotal}                               xpath=//input[@id="inp:vlTotal"]
${BotaoServicos}                              xpath=//button[@id="btnServicos"] 
${BotaoLov}                                   xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoQtdEntrada}                            xpath=//div[@data-member="QT_ENTRADA"]/..
${CampoEditavel}                              xpath=//input[@class="editor-text mode-edit"]
${CampoVlUnitario}                            xpath=//div[@data-member="VL_UNITARIO"]/..
${BotaoRateio}                                xpath=//button[@id="btnRateio"]
${CampoTxRateio}                              xpath=//div[@data-member="TX_RATEIO_FNFI"]/..
${BotaoConfirmar}                             xpath=//button[@id="btnConfirmar"]
${BotaoSair}                                  xpath=//button[@id="btnSair"]  
${BotaoDuplicata}                             xpath=//button[@id="btnDuplicata"]
${CampoDtVenc}                                xpath=//div[@data-member="DT_VENCIMENTO"]/..
${CampoDtVencEdit}                            xpath=//input[contains(@aria-labelledby, "Duplicata_col1")][@type="text"]    
${CampoVlParcela}                             xpath=//div[@data-member="VL_PARCELA"]/..
${BotaoConfirmarDuplicata}                    xpath=//button[@id="btnBaixa"]
${BotaoConcluirEAvaliar}                      xpath=//button[@id="btnConcluir"]
${MensagemToast}                              xpath=//p[@class="notifications-item-text"]  
${BotaoSim}                                   xpath=//li[@class="notification-buttons"]/button[text()="Sim"] 
${CampoFornecedorPreenchido}                  xpath=//span[contains(@title, "1000 MARCAS")]  
${BotaoOK}                                    xpath=//li[@class="notification-buttons"]/button[text()="OK"] 
