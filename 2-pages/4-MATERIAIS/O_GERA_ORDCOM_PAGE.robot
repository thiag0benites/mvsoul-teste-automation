##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_GERA_ORDCOM
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${campoSolicitacaoDeCompra}    xpath=//input[@id="inp:cdSolCom"]
${btnConsultar}    xpath=//button[@id="btnMontaColeta"]
${btnFechar}      xpath=//button[@id="btnFechar"]
${btnSugestaoSistema}    xpath=//button[@id="btnGeraOrdComSist"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
${btnOk}          xpath=//li[@class="notification-buttons"]/button[text()="OK"]
