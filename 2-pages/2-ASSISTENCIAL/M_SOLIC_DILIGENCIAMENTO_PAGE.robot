##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPedido}                              xpath=//input[@id="inp:cdPedido"]
${CampoDiligencia}                          xpath=//input[@id="inp:cdDiligencia"]
${CampoObs}                                 xpath=//textarea[@id="inp:dsObs"]
${BotaoGravar}                              xpath=//button[@id="btnGravar"]

${MensagemFinal}                            xpath=//p[@class='notifications-item-text'][contains(text(),'A Solicitação de Diligenciamento foi criada com sucesso')]
${BotaoOK}                                  xpath=//li[@class="notification-buttons"]/button[text()="OK"]

