##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa

### Campo ###
${CampoFiltrar}                                             xpath=//input[@id='#filterLov']
${CampoDataInicial}                                         xpath=//input[@id='inp:dtInicio']
${CampoHoraInicial}                                         xpath=//input[@id='inp:hrInicio']
${CampoDataFinal}                                           xpath=//input[@id='inp:dtTermino']
${CampoHrFinal}                                             xpath=//input[@id='inp:hrTermino']
${CampoJustificativa}                                       xpath=//input[@id='inp:dsJustificativa']
### Botao ###
${BtnCodAtendimento}                                        xpath=//*[@id="cdAtendimento"]/button
${BtnFiltrar}                                               xpath=//button[@id='btfilter']
${BtnOkFiltrar}                                             xpath=//button[@id='btok']
${BtnCodProcInv}                                            xpath=//*[@id="cdProInvasivo"]/button
${BtnDataInicial}                                           xpath=//*[@id="dtInicio"]/button
${BtnDataFinal}                                             xpath=//*[@id="dtTermino"]/button
${BtnUsuAplicacao}                                          xpath=//*[@id="cdUsuarioAplicacao"]/button
${BtnUsuRetirada}                                           xpath=//*[@id="cdUsuarioRetirada"]/button
${BtnRegInfeccao}                                           xpath=//*[@id="cdRegInf"]/button
${BtnSalvar}                                                xpath=//li[@id='tb-record-save']
${BtnOkAlerta}                                              xpath=//button[@class='btn btn-primary']
### Diversos ###
${ValidMsg}                                                 xpath=//p[@class='notifications-item-text']
### Menu ###
${ClínicaAssistencial}                                      xpath=//a[@role='menuitem'][@title='Clínica e Assistencial']
${ControleInfHosp}                                          xpath=//a[@role='menuitem'][@title='Controle de Infecção Hospitalar']
${Atendimento}                                              xpath=//*[@id="workspace-menubar"]/ul/li[8]/div/ul/li[2]/div/ul/li[2]/a
${ProcInvasivos}                                            xpath=//a[@role='menuitem'][@title='Atendimento']//i[@class='Procedimentos Invasivos']