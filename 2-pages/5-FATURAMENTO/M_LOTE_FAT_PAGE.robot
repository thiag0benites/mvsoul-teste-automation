##################################################################################################################################
# Autor: Marcos Costa
#  Esse caso de teste tem como objetivo a inserção de contas em remessas de convênios sem agrupamento.
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
${BtDescA}    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${BtDescB}    xpath=//input[@class='editor-text mode-edit']
#Competencia
${BtCompA}    xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${BtCompB}    xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']