##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_CANC_REC
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoCodigo}                  xpath=//input[@id="inp:cdAvisoCirurgia"]
${campoMotivoCancelamento}      xpath=//input[@id="inp:cdMotCanc"]

${btnConfirmar}                 xpath=//button[@id="butConfirmar"]



${MensagemToast}      xpath=//p[@class="notifications-item-text"]
${btnOk}              xpath=//li[@class="notification-buttons"]/button[text()="OK"]
