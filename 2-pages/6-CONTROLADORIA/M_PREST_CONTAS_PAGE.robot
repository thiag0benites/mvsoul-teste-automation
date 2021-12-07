##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPO ###
${CampoCodigo}                                        xpath=//input[@id='inp:cdConPag']
${CampoDtPrestacao}                                   xpath=//input[@id='inp:dtPrestacaoContas']
${CampoFiltro}                                        xpath=//input[@id='#filterLov']
${CampoVlPrestacao}                                   xpath=//input[@id='inp:vlMoeda1']
${CampoNroDoc}                                        xpath=//input[@id='inp:nrDocumento']
${CampoDtVencto}                                      xpath=//span[@class='slick-column-name'][contains(text(),"Dt Vencto.")]

### BOTAO ###
${BtnExecConsulta}                                    xpath=//li[@id='tb-execute']
${BtnPesquisar}                                       xpath=//li[@id='tb-search']
${BtnDadosDespesa}                                    xpath=//button[@id='btnDadosDespesa']
${BtnDtPrestacao}                                     xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon ui-state-default']
${BtnSetor}                                           xpath=//*[@id="cdSetor1"]/button
${BtnFiltrar}                                         xpath=//button[@id='btfilter']
${BtnOkFiltro}                                        xpath=//button[@id='btok']
${BtnContaContabil}                                   xpath=//*[@id="cdReduzido1"]/button
${BtnHistPadrao}                                      xpath=//*[@id="cdHistoricoPadrao"]/button
${BtnEfetuarPrest}                                    xpath=//button[@id='btnPrestacao']
${BtnTipoDocumento}                                   xpath=//*[@id="cdTpDocto"]/button
${BtnContaCusto}                                      xpath=//*[@id="cdConCus"]/button
${BtnCaixa}                                           xpath=//*[@id="cdCaixa"]/button
${BtnConfirmar}                                       xpath=//button[@id='btnConfirmar']
${BtnSeguinte}                                        xpath=//li[@id='tb-record-next']
${BtnNotasFornec}                                     xpath=//button[@id='btnNotaFornec']
${BtnSelecNotas}                                      xpath=//button[@id='btnSelecNota']
${ChcBoxInativo}                                      xpath=//button[@data-member='SN_BAIXAR']
${ChcBoxNotas1}                                       xpath=//button[@data-row='0']
${ChcBoxNotas2}                                       xpath=//button[@data-row='1']
${ChcBoxNotas3}                                       xpath=//button[@data-row='2']
${BtnOkAlerta}                                        xpath=//button[@class='btn btn-primary']
${BtnConfImpressao}                                   xpath=//button[@class='btn btn-primary'][contains(text(),"Não")]
${BtnConfirmaContas}                                  xpath=//*[@id="btnConfirma"]


### DIVERSOS ###
${ValidBtInativo}                                     xpath=//a[@data-action='SEARCH'][@class='ui-state-disabled']
${ValidMsg}                                           xpath=//p[@class='notifications-item-text'][contains(text(),"Prestação de Contas Realizada com Sucesso. Gerou a Conta a Receber")]
${ValidPrestConta}                                    xpath=//p[@class='notifications-item-text'][contains(text(),"Prestação realizada com sucesso!")]
${ValidAlertaImpressao}                               xpath=//p[@class='notifications-item-text'][contains(text(),"Deseja imprimir relatório?")]