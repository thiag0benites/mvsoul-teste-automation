##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Geração de Repasse
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***
${CampoCompRepasse}                            xpath=//input[@id="inp:dtCompetencia"]
${CampoDescricao}                              xpath=//input[@id="inp:dsRepasse"]
${BotaoLovConvenio}                            xpath=//div[@id="PARAMETROS_cdConvenio"]/button
${CampoBaseRepasse}                            xpath=//input[@id="PARAMETROS_tpRemessa_ac"]
${BotaoConfirmar}                              xpath=//button[@id="PARAMETROS_parametros_btnConfirma"]  
${MensagemToast}                               xpath=//p[@class="notifications-item-text"] 
${BotaoOK}                                     xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${BotaoConfirmarRepasse}                       xpath=//button[@id="btnConfirma"]             