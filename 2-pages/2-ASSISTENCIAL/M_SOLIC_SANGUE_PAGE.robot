##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitações de banco de sangue
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdAtendimento}    xpath=//input[@id="inp:cdAtendimento"]
${BotaoLovSetorSolic}    xpath=//div[@id="cdSetor"]/button
${BotaoLovSetorExecutante}    xpath=//div[@id="cdSetExa"]/button
${CampoExame}     xpath=//div[@data-member="CD_SANGUE_DERIVADOS"]/..
${BotaoLovExame}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
