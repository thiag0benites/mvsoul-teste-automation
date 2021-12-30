##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Recebimento de transferências entre estoques
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CbConfTransferencia}                xpath=//div[@data-member="CHK_CONFIRMA"]
${BotaoConfirmar}                     xpath=//button[@id="btnConfirmar"]