##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_CANORD
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${campoCodigo}    xpath=//div[@class="slick-cell b0 f0 selected active editable"]//input
${btnCancelar}    xpath=//button[@id="btnCancelar"]
${campoMotivoCancelamento}    xpath=//input[@id="inp:dsCdMotCancel"]
${btnConfirmar}    xpath=//button[@id="btnConfirmaCanc"]
${mensagemApresentada}    xpath=//li[@class="notification-info"]//p[@class="notifications-item-text"]
${btnOk}          xpath=//button[text()="OK"]
${btnSim}         xpath=//button[text()="Sim"]
