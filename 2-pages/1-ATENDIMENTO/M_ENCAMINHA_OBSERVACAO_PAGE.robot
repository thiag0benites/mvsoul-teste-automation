##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Encaminhamento de Pacientes para Observação
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovLeito}                                    xpath=//div[@id="cdLeito"]/button
${BotaoOkLista}                                     xpath=//button[@id="btok"]
${BotaoConfirmar}                                   xpath=//button[@id="btnConfirmar"]