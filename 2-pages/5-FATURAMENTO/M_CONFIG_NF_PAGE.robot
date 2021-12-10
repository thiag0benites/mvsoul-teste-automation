##################################################################################################################################
# Autor: Marcos Costa
# Descrição: Configurar e centralizar as parametrizações do processo da nota fiscal.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

# Convenio
${BtConvA}    xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${BtConvB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtConvC}    xpath=//*[@id="#filterLov"] 
${BtConvD}    xpath=//*[@id="btfilter"]
${BtConvE}    xpath=//*[@id="btok"]
#Descricao

# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']