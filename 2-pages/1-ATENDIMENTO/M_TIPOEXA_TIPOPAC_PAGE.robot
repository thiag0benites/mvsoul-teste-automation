##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela itens a examinar
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPacientes}    xpath=//button[@id="btnTiposPacientes"]
${BtnItens}       xpath=//button[@id="btnItensExaminar"]
${LinhaDescricao}    xpath=//div[@id="grdItensExaminar"]/div[4]/div[3]/div/div/div[2]
${CampoDescricao}    xpath=//input[@class="editor-text mode-edit"]
${LinhaCodigo}    xpath=//div[@id="grdTipoPacienteItensExaminar"]/div[4]/div[3]/div/div/div[1]
${BtnCodigo}      xpath=//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${BtnOk}          xpath=//button[@id="btok"]
${MsgRegistro}    xpath=//p[@class="notifications-item-text"]
