##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Grupo de Critérios
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescricao}    xpath=//input[@id="inp:dsGrupoCriterio"]
${CampoTpCriterio}    xpath=//div[@data-member="DS_TIPO_CRITERIO"]/..
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoVlUnico}    xpath=//div[@data-member="VL_UNICO"]/..
${CampoIdFormula}    xpath=//div[@data-member="DS_IDENTIFICADOR_CRITERIO"]/..
${CampoTpValidade}    xpath=//div[@data-member="TP_VALIDADE"]/..
${CampoVlValidade}    xpath=//div[@data-member="VL_VALIDADE"]/..
${CampoIdPEP}     xpath=//div[@data-member="DS_IDENTIFICADOR_PEP"]/..
${CampoEdit}      xpath=//input[@class="editor-text mode-edit"]
${ComboboxEdit}    xpath=//input[@class="ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left"]
${CampoCdRelacionado1}    xpath=//div[@title="Sinal Vital"]/../../div[2]
${CampoCdRelacionado2}    xpath=//div[@title="Unidade de Medida da Aferição"]/../../div[2]
${CampoFormula}    xpath=//textarea[@id="inp:dsFormulaCopia"]
