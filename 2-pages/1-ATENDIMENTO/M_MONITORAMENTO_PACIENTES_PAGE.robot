##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Diagnóstico de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdUnidAtendimento}                            xpath=//div[@data-member="FILTRO_CD_UNID_INT"]/..
${BotaoLovCdUnidAtend}                               xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${BotaoFiltrar}                                      xpath=//button[@id="executarFiltro"] 