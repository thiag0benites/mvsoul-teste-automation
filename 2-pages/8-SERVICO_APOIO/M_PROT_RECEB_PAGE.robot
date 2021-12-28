##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da Gerenciamento de Higienizações de Leitos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoProtocolo}    xpath=//input[@id="inp:cdProtocoloDoc"]
${BotaoOK}        xpath=//button[@class="btn btn-primary"]
${CheckRecebe}    xpath=//button[@data-member="SN_RECEBIMENTO"]
