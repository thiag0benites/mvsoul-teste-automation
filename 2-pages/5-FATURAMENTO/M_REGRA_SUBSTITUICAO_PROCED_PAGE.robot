##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Regra de Substituição de Procedimento de Cobrança
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoEmpresa}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoProcedimento}    xpath=//div[@data-member="CD_PRO_FAT"][@data-row="1"]/..
${CampoProcedimentoSubst}    xpath=//div[@data-member="CD_PRO_FAT_SUBSTITUTO"][@data-row="1"]/..
${CampoDtVigencia}    xpath=//div[@data-member="DT_VIGENCIA"][@data-row="1"]/..
${CampoDtVigenciaEdit}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]
${CampoConvenio}    xpath=//div[@data-member="CD_CONVENIO"][@data-row="1"]/..
${CampoPlano}     xpath=//div[@data-member="CD_CON_PLA"][@data-row="1"]/..
${CampoRegra}     xpath=//div[@data-member="CD_REGRA"][@data-row="1"]/..
${CampoSetor}     xpath=//div[@data-member="CD_SETOR"][@data-row="1"]/..
${CampoFtQuantidade}    xpath=//div[@data-member="VL_FATOR_MULTIPLICACAO"][@data-row="1"]/..
${CampoFtValor}    xpath=//div[@data-member="VL_FATOR_DIVISAO"][@data-row="1"]/..
${CampoEditavel}    xpath=//input[@class="editor-text mode-edit"]
