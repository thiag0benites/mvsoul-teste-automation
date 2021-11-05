##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                                 xpath=//input[@id="inp:cdAtendimento"]
${CampoCID}                                         xpath=//input[@id="inp:cdCid"]
${ListaTipDoenca}                                   xpath=//input[@id="tpDoenca_ac"]
${CampoTempDoenca}                                  xpath=//input[@id="inp:nrTempoDoenca"]
${ListaTempDoenca}                                  xpath=//input[@id="tpTempoDoenca_ac"]
${CampoResultado}                                   xpath=//input[@id="inp:cdTipRes"]
${CampoDescricao}                                   xpath=//textarea[@id="inp:dsAtendimento"]
${BotaoConfirmarDiag}                               xpath=//button[@data-member="BTN_CONFIRMAR"]
${MensagemToast}                                    xpath=//p[@class="notifications-item-text"]
${BotaoOk}                                          xpath=//button[@class="btn btn-primary"]