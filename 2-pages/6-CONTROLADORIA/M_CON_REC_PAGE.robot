##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Cadastro de Contas a Receber
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***


${CampoProcesso}                            xpath=//input[@id="inp:cdProcesso"]
${CampoDtEmissao}                           xpath=//input[@id="inp:dtEmissao"]
${CampoDTLancamento}                        xpath=//input[@id="inp:dtLancamento"]
${CampoTpDocumento}                         xpath=//input[@id="inp:cdTipDoc"]
${CampoCliente}                             xpath=//input[@id="inp:cdFornecedor"]
${CampoNrDocumento}                         xpath=//input[@id="inp:conRec_nrDocumento"]   
${CampoSerie}                               xpath=//input[@id="inp:nrSerie"]
${CampoContaContabil}                       xpath=//input[@id="inp:cdReduzido"]
${CampoVlBruto}                             xpath=//input[@id="inp:conRec_vlMoeda"]
${CampoDesconto}                            xpath=//input[@id="inp:cdDesconto"]
${CampoVlDesconto}                          xpath=//input[@id="inp:vlMoedaDesconto"]
${CampoAcrescimo}                           xpath=//input[@id="inp:cdAcrescimo"]
${CampoVlAcrescimo}                         xpath=//input[@id="inp:vlMoedaAcrescimo"]
${CampoHistPadrao}                          xpath=//input[@id="inp:cdHistoricoPadrao"]
${CampoObservacao}                          xpath=//input[@id="inp:conRec_dsObservacao"]
${BotaoParcelamento}                        xpath=//a[@href="#CGM_TAB_1-CGM_TAB_1_PAGE_1"]
${CampoParcela}                             xpath=//div[@data-member="VL_MOEDA"][@style="text-align: right"]
${BotaoDetalhamento}                        xpath=//a[@id="CGM_TAB_1_CGM_TAB_1_tab1"]
${CampoDetalhamento}                        xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@aria-labelledby="slickgrid_705245CGM_TAB_1_PAGE_2_grdTipDetconRec_col0_lbl"]
${BotaoCompartilhamento}                    xpath=//a[@id="CGM_TAB_1_CGM_TAB_1_tab2"]
${CampoSetor}                               xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@id="#frames40"]
${CampoContabil}                            xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@id="#frames41"]
${CampoConCusto}                            xpath=//div[@class="slick-cell b4 f4 selected ui-fixed-width"]
${CampoRateio}                              xpath=//div[@class="slick-cell b10 f10 slick-last-cell selected ui-fixed-width"]
${RegistroSalvo}                            xpath=//p[@class="notifications-item-text"]                             

