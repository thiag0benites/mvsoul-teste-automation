##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPedido}                xpath=//input[@id="inp:dspCdPedRx"]
${CampoMotivo}                xpath=//input[@id="inp:dspDsMotivo"]
${BotaoExcluirPedido}         xpath=//button[@id="btnExcluirPedido"]