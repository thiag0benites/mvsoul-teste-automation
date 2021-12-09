##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Confirmação de Entrega de Amostra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoNovaEntrega}                              xpath=//button[@id="btnNovaEntrega"]
${CampoEntregaAmostra}                           xpath=//input[@id="inp:cdAmostra"] 
${MensagemSucesso}                               xpath=//div[@id="msg"] 
