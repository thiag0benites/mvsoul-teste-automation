##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Configuração do Sistema Contábil
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***





${CheckImportaMovTranCaixa}                 xpath=//button[@id="inp:snContabilizaTransfCaixa_btn"]
${CheckContrLanPassHon}                     xpath=//button[@id="inp:snHonorarioPassivo_btn"]
${CheckContrAntAbRec}                       xpath=//button[@id="inp:snContabilizaCaucaoConPag_btn"]

${CheckImportaMvDepAnt}                     xpath=//button[@id="inp:snContabilizaCaucaoAtivoCx"]
${CheckEntrDepPagAntec}                     xpath=//button[@id="inp:snContabilizaCaucaoAtivoCx_btn"]

${CheckImpEmprEsto}                         xpath=//button[@id="inp:snContabilizaEmprestimos"]
${CheckImpManEst}                           xpath=//button[@id="inp:snContabilizaManipulacao_btn"]

${FiltroRelat}                              xpath=//div[@data-member="TP_FILTRO_PADRAO_REL"]/button

${CheckCCEspCanForComp}                     xpath=//button[@id="inp:snCtCtbCancComp_btn"]
${CheckCadClasContAut}                      xpath=//button[@id="inp:snCadastraClassificacao_btn"]
${CheckUsConCadReg}                         xpath=//button[@id="inp:snUsuarioCadastraRegraFfcv"]

${FiltValidLot}                             xpath=//div[@data-member="TP_VALIDA_INTEGRIDADE_LOT_FCCT"]/button

${CheckPermiteLancAtivo}                     xpath=//button[@id="inp:snAtivoCpCliente"]
${CheckPermitApropCenCus}                    xpath=//button[@id="inp:snLctoAtvPasvSetor_btn"]
${ChekImpedMovSet}                           xpath=//button[@id="inp:snImpSetorNaoAceitaLanc_btn"]
${CheckPermitCriac}                          xpath=//button[@id="inp:snPermitePrevContabilizavel_btn"]







//div[@class="slick-cell b1 f1 selected"]




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
${AbaParcelamento}                          xpath=//a[@href="#CGM_TAB_1-CGM_TAB_1_PAGE_1"]
${CampoParcelaDes}                          xpath=//div[@class="slick-cell b5 f5 selected MVMask378"]/.
${CampoParcela}                             xpath=//input[@class="editor-text mode-edit"][@dir="ltr"]
${AbaDetalhamento}                          xpath=//a[@href="#CGM_TAB_1-CGM_TAB_1_PAGE_2"]
${BotaoDetalhamento}                        xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoDetalhamento}                        xpath=//div[@class="slick-cell b0 f0 selected ui-fixed-width"]
${AbaCompartilhamento}                    xpath=//a[@href="#CGM_TAB_1-CGM_TAB_1_PAGE_3"]
${CampoDetalhamento}                        xpath=//div[@class="slick-cell b0 f0 selected ui-fixed-width"]
${BotaoSetor}                               xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoSetor}                               xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@id="#frames40"]
${CampoContabilDes}                         xpath=//div[@data-member="CD_REDUZIDO"][@class="ui-text"]/..
${CampoContabil}                            xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoCusto}                               xpath=//div[@data-member="CD_ITEM_RES"]/..
${CampoConCusto}                            xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoRateioDes}                           xpath=//div[@class="slick-cell b10 f10 slick-last-cell selected ui-fixed-width"]
${CampoRateio}                              xpath=//input[@class="editor-text mode-edit"]
${RegistroSalvo}                            xpath=//p[@class="notifications-item-text"]                             

