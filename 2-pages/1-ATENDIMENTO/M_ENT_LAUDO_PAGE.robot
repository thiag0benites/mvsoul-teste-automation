##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***

### Campos ###
${CampoResponsavel}                                        xpath=//input[@id='inp:nmResponsavel']
${CampoFiltrar}                                            xpath=//input[@id='#filterLov']
${CampoObservacoes}                                        xpath=//input[@id='inp:dsObservacao']
### Botoes ###
${BtnSetorExec}                                            xpath=//*[@id="cdSetExa"]/button
${BtnFiltrar}                                              xpath=//button[@id='btfilter']
${BtnOkFiltrar}                                            xpath=//button[@id='btok']
${BtnPesquisar}                                            xpath=//button[@class='ui-widget ui-button btn btn-default ui-state-default mode-edit']
${BtnLaudo}                                                xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']   
${BtnExecutar}                                             xpath=//li[@id='tb-execute']
${BtnOkAlerta}                                             xpath=//button[@class='btn btn-primary']
${BtnConfirma}                                             xpath=//button[@id='btnConfirma']
${BtnSalvar}                                               xpath=//li[@id='tb-record-save']
### Variados ###
${ListaNome}                                               xpath=//div[@class='ui-text ui-state-readonly']
${ListaExame}                                              xpath=//input[@class='editor-text ui-state-readonly mode-read']
${MsgAlerta}                                               xpath=//p[@class='notifications-item-text']