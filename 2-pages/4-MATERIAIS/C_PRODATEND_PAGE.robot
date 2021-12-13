##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Consumo do Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovPaciente}                            xpath=//div[@id="cdAtendimento"]/button
${CbPacInternacao}                             xpath=//button[@id="inp:internacao_btn"]
${BotaoConfirmar}                              xpath=//button[@id="btnConfirmar"]  