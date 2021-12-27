##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Solicitação de Transferencia de Leito
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoTurma}     xpath=//input[@id="inp:cdTurma"]
${BotaoBuscar}    xpath=//button[@id="btnBuscar"]
${CheckSeleciona}    xpath=//button[@data-member="CHK_AGENDA"]
${BotaoRegCont}    xpath=//button[@id="btnContato"]
${CampoAssunto}    xpath=//input[@class="editor-text mode-edit"]
${CampoDetalhamento}    xpath=//textarea[@id="inp:dsContato"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
