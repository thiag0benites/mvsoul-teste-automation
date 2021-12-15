##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovUnidInternacao}    xpath=//div[@id="cdUnidInt"]/button
${CampoDtInicial}    xpath=//input[@id="inp:dtInicial"]
${CampoDtFinal}    xpath=//input[@id="inp:dtFinal"]
${CampoLeito}     xpath=//div[@data-member="CD_LEITO"]/..
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoOcorrencia}    xpath=//div[@data-member="CD_TAB_OCOR"]/..
${CampoDescricao}    xpath=//textarea[@id="inp:dsTroPla"]
${BotaoImprimir}    xpath=//button[@id="btnImpressao"]
