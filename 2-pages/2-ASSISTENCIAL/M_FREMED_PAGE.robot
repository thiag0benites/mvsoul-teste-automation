##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdFrequencia}             xpath=//input[@id="inp:cdTipFre"]
${CampoDescricao}                xpath=//input[@id="inp:dsTipFre"]
${CampoIntervalo}                xpath=//input[@id="inp:nrIntervalo"]
${CampoTpIntervalo}              xpath=//input[@id="TIP_FRE_tpIntervalo_ac"]
${CampoSetor}                    xpath=//div[@data-member="CD_SETOR"]/..
${BotaoLovEdit}                  xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button