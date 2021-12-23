##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da página carteira de paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPaciente}    xpath=//button[@id="novopac"]
${CampoNome}      xpath=//input[@id="inp:nmPaciente"]
${BtnAtender}     xpath=(//button[@id="_exit"])[2]
${BtnMedico}      xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[1]
${CampoFiltro}    xpath=//input[@id="#filterLov"]
${BtnFiltro}      xpath=//button[@id="btfilter"]
${BtnOk2}         xpath=//button[@id="btok"]/span
${BtnOrigem}      xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[3]
${BtnConvenio}    xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[4]
${LinhaConvenio}    xpath=//div[@title="AMIL - 140 TESTE"]
${BtnCarteira}    xpath=//button[@id="btn3"]
${BtnPlano}       xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[5]
${LinhaCarteira}    xpath=//div[@id="grdCarteira"]/div[4]/div[3]/div/div[2]/div[3]
${CampoCarteira}    xpath=//input[@class="editor-text mode-edit"]
${LinhaValidade}    xpath=//div[@id="grdCarteira"]/div[4]/div[3]/div/div[2]/div[4]
${CampoValidade}    xpath=(//input[@class="ui-widget-content ui-buttoninput ui-corner-left"])[22]
${LinhaAtivo}     xpath=//div[@id="grdCarteira"]/div[4]/div[3]/div/div[2]/div[5]/div
${ComboboxAtivo}    xpath=(//input[@role="combobox"])[6]
${BtnCategoria}    xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[22]
${BtnSelecionar}    xpath=//button[@id="btnSelecionar"]
${MsgRegistrada}    xpath=//p[@class="notifications-item-text"]
${ValidaCarteira}    xpath=//div[@id="atendime1_nrCarteira"]
${BtnLocal}       xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[6]
