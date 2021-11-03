##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Transferência de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                                 xpath=//input[@id="inp:cdAtendimento"]
${BotaoLovNvLeito}                                  xpath=//div[@id="cdLeito"]/button