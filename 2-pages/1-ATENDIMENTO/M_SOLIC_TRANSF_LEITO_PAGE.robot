##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Solicitação de Transferencia de Leito
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${BotaoIncluir}                                    xpath=//button[@id="btnIncluir"]

${CampoAtendimento}                                 xpath=//input[@id="inp:cdAtendimento"]
${CampoAcomodacao}                                  xpath=//input[@id="inp:cdTipAcom"]
${CampoMotivo}                                      xpath=//input[@id="inp:cdMotivoTransfLeito"]

${BotaoConfirmar}                                   xpath=//button[@id="btnConfirmar"]
${MensagemToast}                                    xpath=//p[@class="notifications-item-text"]
${BotaoOk}                                          xpath=//button[@class="btn btn-primary"]