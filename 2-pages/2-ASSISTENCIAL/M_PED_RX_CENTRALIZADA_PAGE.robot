##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}    xpath=//input[@id="inp:cdAtendimento"]
${CampoSetorExecutante}    xpath=//div[@data-member="CD_SET_EXA"]/..
${CampoMedicoExecutante}    xpath=//div[@data-member="CD_PRESTADOR"]/..
${CampoExame}     xpath=//div[@data-member="CD_EXA_RX"]/..
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${BotaoLovMedSolicitante}    xpath=//div[@id="cdPrestadorSolic"]/button
${BotaoLovSetorSolicitante}    xpath=//div[@id="cdSetorSolic"]/button
${CampoDtSolicitacao}    xpath=//input[@id="inp:dtSolicitacao"]
${CampoDtAutorizacao}    xpath=//input[@id="inp:dtAutorizacao"]
${CampoDtValidade}    xpath=//input[@id="inp:dtValidade"]
