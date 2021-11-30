##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Gerenciamento de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                         xpath=//input[@id="inp:atendimento"]
${LinhaDoPedido}                            xpath=//input[@row="0"]
${BotaoExcluir}                             xpath=//button[@id="btnExcluir"]
${ConfirmaExcluir}                          xpath=//p[@class="notifications-item-text"]
${ExcluirSim}                               xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${ConfirmaExcluirOk}                        xpath=//p[@class="notifications-item-text"]
${ExcluirOK}                                xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${MotivoExc}                                xpath=//textarea[@id='inp:blMotivoExclusao_dsMotivo']
${ConfirmaMotivo}                           xpath=//button[@id='blMotivoExclusao_btnConfirmar']