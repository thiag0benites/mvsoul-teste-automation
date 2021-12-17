##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Ficha Nutricional de Pacientes
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                xpath=//input[@id="inp:cdAtendimento"]
${CampoTpRefeicao}                 xpath=//div[@data-member="CD_TIPO_REFEICAO"]/..
${BotaoLovEdit}                    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoObservacao}                 xpath=//div[@data-member="DS_OBSERVACAO"]/..
${CampoEdit}                       xpath=//input[@class="editor-text mode-edit"] 
