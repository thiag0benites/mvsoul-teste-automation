##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Registro de Passagem de Amostra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovBancada}                        xpath=//div[@id="cdBancadaframes15"]/button
${CampoAmostra}                           xpath=//div[@id="cdAmostraframes17"]/input[@type="text"]
${BotaoSim}                               xpath=//li[@class="notification-buttons"]/button[text()="Sim"]