##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***
### Campos ###
${CampoDtHrPrevInter}                                        xpath=//input[@id='inp:dtPrevInter']
${CampoTempoPrev}                                            xpath=//input[@id='inp:vlTempoPrevisto']
${CampoFiltrar}                                              xpath=//input[@id='#filterLov']
${CampoObservacao}                                           xpath=//textarea
${CampoAtvMedica}                                            xpath=//div[@class='slick-cell b3 f3 ui-fixed-width selected']
### Botoes ###
${BtnAtendimento}                                            xpath=//*[@id="cdAtendimento"]/button
${BtnFiltrar}                                                xpath=//button[@id='btfilter']
${BtnOkFiltrar}                                              xpath=//button[@id='btok']
${BtnCentroCir}                                              xpath=//*[@id="cdCenCir"]/button
${BtnSalaCir}                                                xpath=//*[@id="cdSalCir"]/button
${BtnCirurgias}                                              xpath=//button[@id='butCirurgias']
${BtnCodCir}                                                 xpath=//*[@id="grdCirAvi"]/div[4]/div[3]/div/div/div[1]/div/button
${ChBoxPrincipal}                                            xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit']
${BtnPrestadores}                                            xpath=//button[@id='butPrestador']
${BtnCodigo}                                                 xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnAtvMedica}                                              xpath=//*[@id="grdPreAvi"]/div[4]/div[3]/div/div/div[4]/div/button
${BtnSalvar}                                                 xpath=//li[@id='tb-record-save']       
### Variados ###
${MsgAlerta}                                                 xpath=//p[@class='notifications-item-text']