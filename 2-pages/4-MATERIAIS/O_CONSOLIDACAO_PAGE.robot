##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoMesAno}                             xpath=//input[@id='inp:dtProcessamento']
${BtnConfirmacao}                          xpath=//button[@id='btnConfirma']
${MensagemSave}                            xpath=//li[@class='notification-info']//p[@class="notifications-item-text"]