##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoCompetencia}                                        xpath=//input[@id='inp:dtCompetencia']

### BOTOES ###
${BtnCalendCompetencia}                                    xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon ui-state-default']            
${BtnConsultar}                                            xpath=//button[@id='btnConsultar']
${BtnAlertaSimParaTodos}                                   xpath=//button[@class='btn btn-primary'][contains(text(),"Sim Todos")]
${CkBoxTodos}                                              xpath=//button[@id='inp:ckbTodos_btn']
${BtnConfirmar}                                            xpath=//*[@id="btnConfirmar"]
${BtnPagarTodos}                                           xpath=//*[@id="btnPagarTodos"]
${BtnOkAlerta}                                             xpath=//button[@class='btn btn-primary']

### DIVERSOS ###
${MsgUsuarioAlerta}                                        xpath=//p[@class='notifications-item-text'][contains(text(),"Atenção: Existe(m) repasse(s) gerado(s) em competência anterior para o grupo de repasse ")]
${MsgErroAlerta}                                           xpath=//p[@class='notifications-item-text']