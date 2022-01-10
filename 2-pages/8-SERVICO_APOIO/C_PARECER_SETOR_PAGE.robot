##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoOrigem}    xpath=//input[@id="inp:cdOrigem"]
${CampoSetor}     xpath=//input[@id="inp:cdSetor"]
${CampoNomePaciente}    xpath=//input[@id="inp:nmOrigem"]
${CampoTipoChamado}    xpath=//input[@id="inp:cdChamado"]
${CampoNivelChamado}    xpath=//input[@id="inp:cdNivel"]
${CampoMeioChamado}    xpath=//input[@id="inp:cdMeio"]
${CampoPaciente}    xpath=//input[@id="inp:cdPaciente"]
${CampoDescResu}    xpath=//textarea[@id="inp:descrChamado"]
#SETORES ENVOLVIDOS
${CampoCodigoSetores}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoCodigo2}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
#MOTIVOS
${CampoCodigoMotivos}    xpath=//div[@class="ui-text"][@data-member="CD_SAC_MOTIVO"]/..
${CampoCodigoMotivosEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoUsuarioMotivos}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
#FUNCIONARIOS DESTINATARIOS
${CampoCodDest}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
### Botoes ###
${BtnParecer}     xpath=//button[@id="btnParecer"]
${BtnSalvar}      xpath=//li[@id="tb-record-save"]
### Diversos ###
${MsgRecebida}    xpath=//div[@class="notifications-item-body notification-item-no-title"]/p
