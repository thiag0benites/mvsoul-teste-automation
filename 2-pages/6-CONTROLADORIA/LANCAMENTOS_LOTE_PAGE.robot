##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### CAMPO ###
${CampoEditDescric}    xpath=//input[@class='editor-text mode-edit']
${CampoDataFinal}    xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${CampoAcesso}    xpath=//div[@class='ui-datefield ui-buttoninput ui-widget mode-edit']
${CampoFiltro}    xpath=//input[@id='#filterLov']
${CampoDescrComplem}    xpath=//input[@id='inp:dsHistorico']
${CampoDataLancamento}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[2]
${CampoDataLancEdit}    xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left'][@row='0']
${CampoCodReduzCred}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[6]
${CampoCodReduzDebt}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[3]
${CampoValorMoeda}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[10]
${CampoHist}      xpath=//input[@id='inp:cdHistoricoPadrao']
### BOTAO ###
${BtnDataFinal}    xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${BtnGravar}      xpath=//li[@id='tb-record-save']
${BtnHistPadrao}    xpath=//*[@id="cdHistorico"]/button
${BtnFiltrar}     xpath=//button[@id='btfilter']
${BtnOkFiltrar}    xpath=//button[@id='btok']
${BtnCodReduzDebt}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[3]/div/button
${BtnCodReduzCred}    xpath=//*[@id="grdLctoContabil"]/div[4]/div[3]/div/div/div[6]/div/button
### DIVERSOS ###
${MsgGravar}      xpath=//p[@class='notifications-item-text'][contains(text(),"Registros gravados com sucesso")]
## MENU ##
${Controladoria}    xpath=//a[@role][@title='Controladoria']
${Contabilidade}    xpath=//a[@role][@title='Contabilidade']
