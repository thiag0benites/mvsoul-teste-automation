##################################################################################################################################
# Autor: Marcos Costa
# Realizar o relacionamento dos procedimentos de faturamento com a tabela SIMPRO. 
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
# Medicamento
${ProMedA}    xpath=//div [@class='slick-cell b3 f3 selected']
${ProMedB}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${ProMedC}    xpath=//*[@id="#filterLov"]  
${ProMedD}    xpath=//*[@id="btfilter"]
${ProMedE}    xpath=//*[@id="btok"]
# Fator de Divisão
${BtFatDivA}    xpath=//div[@class='ui-text'][@data-member='VL_FATOR_DIVISAO']
${BtFatDivB}    xpath=//input[@class='editor-text mode-edit']
# Tipo de Valor
${CpTipValorA}    xpath=//div[@class='ui-text'][@data-member='TP_CALCULO_VALOR']
${CpTipValorB}    xpath=//input[@class='ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left'][@title='Unitário']
# Tuss
${CpTussA}        xpath=//div[@class='slick-cell b8 f8 slick-last-cell selected']
${CpTussB}        xpath=//input[@class='editor-text mode-edit']
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']
