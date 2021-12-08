##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Importar os dados da tabela BRASINDICE para o sistema. 
# A importação corresponde a conversão que incidirá sobre uma determinada tabela para fins de faturamento.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

# Tabela de Faturamento
${BtTabA}    xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${BtTabB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtTabC}    xpath=//*[@id="#filterLov"] 
${BtTabD}    xpath=//*[@id="btfilter"]
${BtTabE}    xpath=//*[@id="btok"]
