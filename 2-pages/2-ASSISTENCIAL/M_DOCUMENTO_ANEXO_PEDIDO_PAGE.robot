##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Anexo de Pedidos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoPedido}                 xpath=//input[@id="cdPedLab"]
${BotaoOk}                    xpath=//button[@class="btn btn-primary"]
${BotaoAcesso}                xpath=//button[@id="btnAnexarDoc"]