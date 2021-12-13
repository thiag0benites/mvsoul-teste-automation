##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_CANC_REC
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoDtFinal}                 xpath=//input[@id="inp:dtFinal"]
${campoMotivoCancelamento}      xpath=//input[@id="inp:cdMotivoCanc"]
${checkbox}                     xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[2]/div/fieldset/div/div/div[4]/div[3]/div/div[1]/div[1]/div/button
${btnConfirmar}                 xpath=//button[@id="btnApaga"]


# ${campoMotivo}              xpath=//input[@id="inp:cdMotivoProrrogacao"]
# ${campoMotivoProrrogacao}   xpath=//div[@id="dsMotivoProrrogacao"]



${MensagemToast}      xpath=//p[@class="notifications-item-text"]
${btnOk}              xpath=//li[@class="notification-buttons"]/button[text()="OK"]
