##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoCodAtend}                   xpath=//input[@id="inp:cdAtendimento"]
${campoEstabSolocitante}           xpath=//input[@id="inp:cdEstabelecimento"]
${campoC.A}                        xpath=//input[@id="inp:cdCaraterAtendimento"]
${campoEspecialidade}              xpath=//input[@id="inp:cdEspecSus"]
${campoMedResp}                    xpath=//input[@id="inp:cdPrestador"]
${campoCID}                        xpath=//input[@id="inp:cdCidSecundario"]
${campoCIDAssoc}                   xpath=//input[@id="inp:cdCidCausasAssociadas"]
${campoSintomas}                   xpath=//textarea[@id="inp:dsSinaisSintClinicos"]
${campoJustfIntern}                xpath=//textarea[@id="inp:dsCondJustInternacao"]
${campoProvasDiag}                 xpath=//textarea[@id="inp:dsResultProvDiag"]



### Botoes ###
${BtnSimPopUp}                          xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnOk}                                xpath=//li[@class='notification-buttons']/button
${BtnSalvar}                            xpath=//li[@id='tb-record-save']
${BtnImprimeLaudo}                      xpath=//button[@id="butImprime"]
${BtnImprimir}                          xpath=//button[@data-member="BTN_IMPRIMIR"]





### Diversos ###
${Alerta}                        xpath=//div[@class="notifications-item-body notification-item-no-title"]/p                              