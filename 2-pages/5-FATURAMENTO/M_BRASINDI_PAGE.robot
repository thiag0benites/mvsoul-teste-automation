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
# Procedimento
${ProFatA}    xpath=//div [@class='slick-cell b1 f1 selected']
${ProFatB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${ProFatC}    xpath=//*[@id="#filterLov"]  
${ProFatD}    xpath=//*[@id="btfilter"]
${ProFatE}    xpath=//*[@id="btok"]
# Laboratorio
${BtLabA}    xpath=//div [@class='slick-cell b2 f2 selected']
${BtLabB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtLabC}    xpath=//*[@id="#filterLov"]  
${BtLabD}    xpath=//*[@id="btfilter"]
${BtLabE}    xpath=//*[@id="btok"]
# Medicamento
${BtMedA}    xpath=//div [@class='slick-cell b3 f3 selected']
${BtMedB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtMedC}    xpath=//*[@id="#filterLov"]  
${BtMedD}    xpath=//*[@id="btfilter"]
${BtMedE}    xpath=//*[@id="btok"]
# Apresentacao
${BtApreA}    xpath=//div [@class='slick-cell b5 f5 selected']
${BtApreB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtApreC}    xpath=//*[@id="#filterLov"]  
${BtApreD}    xpath=//*[@id="btfilter"]
${BtApreE}    xpath=//*[@id="btok"]
# Quantidade
${CpQtdade}    xpath=//div[@class='slick-cell b7 f7 selected']
${CpGeneric}    xpath=//input[@class='editor-text mode-edit']
# Tiss
${CpTiss}      xpath=//div[@class='slick-cell b9 f9 selected']
# Tuss
${CpTuss}      xpath=//div[@class='slick-cell b10 f10 slick-last-cell selected']                   
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']

