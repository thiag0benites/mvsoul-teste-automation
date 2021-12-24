##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Triagem de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### CAMPO ###
${CampoNome}                                          xpath=//input[@id='inp:primeiroNome']
${CampoRespContato}                                   xpath=//input[@id='inp:cdUsuario']
${CampoInformante}                                    xpath=//input[@id='inp:dsInformante']
${CampoInfPertinente}                                 xpath=//textarea
${CampoDataObito}                                     xpath=//input[@id='inp:dtObito']
${CampoHoraObito}                                     xpath=//input[@id='inp:hrObito']
${CampoDeclObito}                                     xpath=//input[@id='inp:nrDeclaracaoObito']
${CampoLocal}                                         xpath=//input[@id='tpLocal_ac']
### BOTAO ###
${BtnPaciente}                                        xpath=//*[@id="cdPaciente"]/button
${BtnPesquisar}                                       xpath=//button[@id='btnPesquisar']
${BtnConfirmar}                                       xpath=//button[@id='pacientes_btnOk'] 
${BtnDataObito}                                       xpath=//*[@id="dtObito"]/button
${BtnCID}                                             xpath=//*[@id="cdCidObito"]/button
${BtnOk}                                              xpath=//button[@id='btok']  
${BtnSalvar}                                          xpath=//li[@id='tb-record-save']     
### VARIADOS ###
${ValidObito}                                         xpath=//p[@class='notifications-item-text']