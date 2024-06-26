##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Campos ###
${CampoAtendimento}    xpath=//input[@id='inp:cdAtendimento']
${CampoFiltrar}    xpath=//input[@id='#filterLov']
${CampoCRM}       xpath=//input[@id='inp:nrCrm']
${CampoNroConselho}    xpath=//input[@id='inp:nrConselho']
${CampoNomePrest}    xpath=//input[@id='inp:nmPresExt']
${CampoExame}     xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${MedSolic}       xpath=//input[@id='inp:cdPrestador']
${Setor}          xpath=//input[@id='inp:cdSetor']
${DtPedido}       xpath=//input[@id='inp:dtPedido']
${CampoPaciente}    xpath=//input[@id='inp:cdPaciente']
${CampoSetorSolic}    xpath=(//*[@id="inp:cdSetor"])[2]
${CampoCRMExame}    xpath=(//input[@id='inp:nrCrm'])[2]
${CampoPrestador}    xpath=(//input[@id='inp:cdPrestador'])[2]
${CampoSetorText}    xpath=//*[@id="inp:nmSetor"]
### Botoes ###
${BtnMedicoSolic}    xpath=//*[@id="cdPrestador"]/button
${BtnFiltrar}     xpath=//button[@id='btfilter']
${BtnOkFiltrar}    xpath=//button[@id='btok']
${BtnSetorPrest}    xpath=//button[@id='btnSetorPrestador']
${BtnExterno}     xpath=//button[@id='btnExterno']
${BtnConselho}    xpath=//*[@id="cdConselho"]/button
${BtnEspecialidade}    xpath=//*[@id="cdEspecialid"]/button
${BtnSelecionar}    xpath=//button[@id='btnSelecionar']
${BtnSetorSolic}    xpath=(//*[@id="cdSetor"]/button)[2]
${BtnExame}       xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${FinalizarLancamento}    xpath=//button[@id='btnFinalizar']
${BtnDtPedido}    xpath=//*[@id="dtPedido"]/button
${BtnSalvar}      xpath=//*[@id="tb-record-save"]
### Variados ###
${MsgValid}       xpath=//p[@class='notifications-item-text']
