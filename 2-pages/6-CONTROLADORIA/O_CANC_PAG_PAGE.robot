##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Cancelamento de Pagamentos
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***

${BotaoCheque}                             xpath=//button[@id="rb_TpPagto_Cheque_btn"]
${BotaoBordero}                            xpath=//button[@id="rb_TpPagto_Bordero_btn"]
${CampoCheque}                             xpath=//input[@id="inp:cdCheque"]
${CampoBordero}                            xpath=//input[@id="inp:cdBordero"]
${CampoMotivo}                             xpath=//input[@id="inp:cdMotivoCanc"]
${CampoData}                               xpath=//input[@id="inp:dtCancelamento"] 
${BotaoConfirmar}                          xpath=//button[@id="btnConfirmar"] 
${MensagemConfirmar}                       xpath=//p[@class="notifications-item-text"]
${BotaoSim}                                xpath=//li[@class="notification-buttons"]/button[text()="Sim"]     
${NotfMensagemSucesso}                     xpath=//li[@class="notification-info"]
${BotaoOk}                                 xpath=//li[@class="notification-buttons"]/button[text()="OK"]

