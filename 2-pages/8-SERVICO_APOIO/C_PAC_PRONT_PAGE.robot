##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Histórico das Movimentações da Pasta do Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovSAME}                                    xpath=//div[@id="cdSame"]/button
${BotaoAcessar}                                    xpath=//button[@id="ok"]
${BotaoLovAtendimento}                             xpath=//div[@id="cdAtendimento"]/button
${BotaoConsultar}                                  xpath=//button[@id="btnExc"]  
