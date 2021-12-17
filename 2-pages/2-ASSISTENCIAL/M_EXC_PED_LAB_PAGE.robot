##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPedido}                              xpath=//input[@id="inp:dspCdPedLab"]
${CampoMotivo}                                   xpath=//input[@id="inp:dspDsMotivo"]
${BotaoExcluir}                             xpath=//button[@id="btnExcluirPedido"]

${ExcluirSim}                               xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${MensagemFinal}                            xpath=//p[@class='notifications-item-text'][contains(text(),'Exclusão efetuada com sucesso.')]
${BotaoOK}                                  xpath=//li[@class="notification-buttons"]/button[text()="OK"]

