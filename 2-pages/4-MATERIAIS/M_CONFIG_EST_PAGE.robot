##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina M_COLPRE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### BOTAO ###
${BtnOkAlerta}                                          xpath=//button[@class='btn btn-primary'][contains(text(),'OK')]
${BtnSalvar}                                            xpath=//li[@id='tb-record-save']
${BtnParametro}                                         xpath=//*[@id="cgStackControl"]/button
${BtnProcurar}                                          xpath=//li[@id='tb-search']
${BtnExecutar}                                          xpath=//li[@id='tb-execute']
### CAMPO ###
${CampoParametro}                                       xpath=//*[@id="cgStackControl_ac"]
${CampoQtdXA}                                           xpath=//input[@id='inp:qtLoteCompraXa2']
${CampoQtdZA}                                           xpath=//input[@id='inp:qtLoteCompraZa1']
${CampoQtdXC}                                           xpath=//input[@id='inp:qtLoteCompraXc2']
${CampoQtdZC}                                           xpath=//input[@id='inp:qtLoteCompraZc1']
${CampoEdit}                                            xpath=//input[@class='editor-text mode-edit']
${CampoCaminhoNF}                                       xpath=//*[@id="inp:dsNotaFiscalDevolucao"]
### VARIADOS ###
${MsgAltData}                                           xpath=//p[@class='notifications-item-text']
