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
${MensagemSalvar}                          xpath=//p[@class="notifications-item-text"]