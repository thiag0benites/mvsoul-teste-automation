##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Registro de Pré-Agendamento Cirúrgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPaciente}                                  xpath=//input[@id="inp:cdPaciente"]
${CampoData}                                      xpath=//input[@id="inp:dtSugestaoCirurgia"]
${CampoTempo}                                     xpath=//input[@id="inp:dtTempoPrevisto"]
${CampoPrestador}                                 xpath=//input[@id="inp:cdPrestador"]
${CampoEspecialid}                                xpath=//input[@id="inp:cdEspecialid"]
${CampoKit}                                       xpath=//input[@id="inp:cdFormula"]
${CampoConv}                                      xpath=//input[@id="inp:cdConvenio"]
${CampoPlan}                                      xpath=//input[@id="inp:cdConPla"]
${CampoAnestesia}                                 xpath=//input[@id="inp:cdTipAnest"]
${CampoCirurgia}                                  xpath=//input[@type="text"][@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="0"]                                                                 
${CheckPrincipal}                                 xpath=//button[@data-member="SN_PRINCIPAL"]
${BotaoConfirmar}                                 xpath=//button[@id="btnConfirmar"]
${BotaoSair}                                      xpath=//button[@id="sair"]
${MensagemToast}                                  xpath=//p[@class="notifications-item-text"]
