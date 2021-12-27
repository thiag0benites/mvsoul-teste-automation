##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da Gerenciamento de Higienizações de Leitos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${LovUnid}        xpath=//div[@id="cdUnidInt"]/button
${BotaoCancelar}    xpath=//button[@id="btclose"]
${CampoUnid}      xpath=//input[@id="inp:cdUnidInt"]
