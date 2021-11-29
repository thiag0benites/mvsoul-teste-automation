##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### CAMPOS ###
${CampoProcesso}                                        xpath=//input[@id='inp:cdProcesso']
${CampoFiltro}                                          xpath=//input[@id='#filterLov']
${CampoValorBruto}                                      xpath=//input[@id='inp:vlMoedaBruto']



### BOTOES ###
${BtnProcesso}                                          xpath=//*[@id="cdProcesso"]/button
${BtnFiltrar}                                           xpath=//button[@id='btfilter']
${BtnOkFiltro}                                          xpath=//button[@id='btok']
${BtnTipoDoc}                                           xpath=//*[@id="cdTipDoc"]/button
${BtnFornecedor}                                        xpath=//*[@id="cdFornecedor"]/button
${BtnEmpresa}                                           xpath=//*[@id="cdMultiEmpresa"]/button





### DIVERSOS ###
${ValidCampoProcessoPosit}                               xpath=//input[@id='inp:dspProcesso'][@title='1.2.1.1.1 - Contas a Pagar de Diversos']
${ValidCampoProcessoNegat}                               xpath=//input[@id='inp:dspProcesso'][@title]