##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Versão
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoEditavel}                    xpath=//input[@class="editor-text mode-edit"]
${CampoExame}                       xpath=//div[@data-member="CD_EXA_LAB"][@data-row="1"]/..
${CampoCdMaterial}                  xpath=//div[@data-member="CD_MATERIAL"][@data-row="1"]/..
${BotaoLovEdit}                     xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button 