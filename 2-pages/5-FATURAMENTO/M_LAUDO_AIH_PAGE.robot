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
${campoCidPrincipal}               xpath=//input[@id="inp:cdCidPrincipal"]
${campoCIDSecundario}              xpath=//input[@id="inp:cdCidSecundario"]
${campoCIDAssoc}                   xpath=//input[@id="inp:cdCidCausasAssociadas"]
${campoSintomas}                   xpath=//textarea[@id="inp:dsSinaisSintClinicos"]
${campoJustfIntern}                xpath=//textarea[@id="inp:dsCondJustInternacao"]
${campoProvasDiag}                 xpath=//textarea[@id="inp:dsResultProvDiag"]
${campoNomePaciente}               xpath=//div[@data-member="NM_PACIENTE"]/span





### Botoes ###
${BtnSimPopUp}                          xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnOk}                                xpath=//li[@class='notification-buttons']/button
${BtnSalvar}                            xpath=//li[@id='tb-record-save']
${BtnImprimeLaudo}                      xpath=//button[@id="butImprime"]
${BtnImprimir}                          xpath=//button[@data-member="BTN_IMPRIMIR"]
${BtnSair}                              xpath=//button[@data-member="BTN_SAIR"]





### Diversos ###
${Alerta}                        xpath=//div[@class="notifications-item-body notification-item-no-title"]/p                      