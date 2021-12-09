##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Pedidos de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                                    xpath=//input[@id="inp:cdAtendimento"]
${MensagemToast}                                       xpath=//p[@class="notifications-item-text"] 
${BotaoOK}                                             xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${CampoTpSolicitacao}                                  xpath=//input[@id="tpSolicitacao_ac"]
${BotaoLovSetorSolic}                                  xpath=//div[@id="cdSetor"]/button  
${BotaoLovMedicoSolic}                                 xpath=//div[@id="cdPrestador"]/button  
${CampoExame}                                          xpath=//div[@data-member="CD_EXA_LAB"]/..
${BotaoLov}                                            xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button           
${CampoLaboratorio}                                    xpath=//div[@data-member="CD_LABORATORIO"]/..
${CampoMaterial}                                       xpath=//div[@data-member="CD_MATERIAL"]/..
${CampoCdSolicExame}                                   xpath=//input[@id="inp:cdPedLab"] 