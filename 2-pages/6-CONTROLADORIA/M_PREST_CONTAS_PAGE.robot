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

### BOTAO ###
${BtnExecConsulta}                                    xpath=//li[@id='tb-execute']
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

### DIVERSOS ###
${ValidBtInativo}                                     xpath=//a[@data-action='SEARCH'][@class='ui-state-disabled']
${ValidMsg}                                           xpath=//p[@class='notifications-item-text'][contains(text(),"Prestação de Contas Realizada com Sucesso. Gerou a Conta a Receber")]