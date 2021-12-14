##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Cancelamento de Solicitacao
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoSolic}                xpath=//input[@class="editor-text mode-search"]
${CheckCancelar}             xpath=//button[@data-member="CHK_CANCELAR"]
${BotaoCancelar}             xpath=//button[@data-member="BTN_CANCELA_SOLICITACAO"]

${MotivoCanc}                xpath=//input[@id="inp:cdMotivoCancelamento"]
${JustificativaCanc}         xpath=//textarea[@id="inp:dsJustificativaCancelamento"]
${BotaoConfirmar}            xpath=//button[@data-member="BTN_CANCELAR_SOLICITACAO"]

${MensagemSucesso}           xpath=//p[@class="notifications-item-text"]
${BotaoOk}                   xpath=//button[@class="btn btn-primary"]

