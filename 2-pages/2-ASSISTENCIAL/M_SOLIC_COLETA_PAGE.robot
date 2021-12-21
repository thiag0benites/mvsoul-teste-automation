##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitação de Coleta de Material
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                xpath=//input[@id="inp:dspCdAtendimento"]
${CampoTbColeta}                   xpath=//div[@data-member="CD_TUBO_COLETA"][@data-row="1"]/..
${CampoMaterial}                   xpath=//div[@data-member="CD_MATERIAL"][@data-row="1"]/..
${CampoExame}                      xpath=//div[@data-member="CD_EXA_LAB"]/..
${BotaoLovEdit}                    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button    
${CampoLovEdit}                    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input