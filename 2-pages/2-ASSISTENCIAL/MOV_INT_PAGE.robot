##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Transferência de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                                 xpath=//input[@id="inp:cdAtendimento"]
${BotaoLovMotivo}                                   xpath=//div[@id="cdMotivoTransfLeito"]/button
${BotaoLovTpLimpeza}                                xpath=//div[@id="dspCdTipoLimpeza"]/button
${BotaoOk}                                          xpath=//button[@class="btn btn-primary"]