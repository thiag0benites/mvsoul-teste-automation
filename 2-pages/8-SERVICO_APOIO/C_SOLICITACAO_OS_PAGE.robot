##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consulta das Ordens de Serviço
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${MensagemToast}                xpath=//p[@class="notifications-item-text"]
${BotaoOk}                      xpath=//button[@class="btn btn-primary"]
