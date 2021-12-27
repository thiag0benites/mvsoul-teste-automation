##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da página M_SUSPENSAO_AVISO_CIRURGICO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${ElementoMsgRecebida}    xpath=//p[@class='notifications-item-text']
${abaAguardRealizacao}    xpath=//div[@id='countAr']
${buttonSuspender}    xpath=//button[@id='btnSuspender']
${campoAviso}     xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/div[11]/fieldset/div/div/div[1]/div[1]/div[1]/input
${buttonConfirmar}    xpath=//button[@id='btnConfirmar']
${buttonCancelar}    xpath=//button[@id='btnCancelar']
${campoMotivo}    xpath=//input[@id='inp:cdMotivoSuspensao']
${campoObservacao}    xpath=//textarea[@id='inp:dsObservacao']
