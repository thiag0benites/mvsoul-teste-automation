##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoData}                  xpath=//input[@id="inp:dtPedido1"]
${ItemComboBox}                   xpath=//input[@id="tpSituacaoExame_ac"]
${CampoMedico}                xpath=//input[@id="inp:cdPrestador"]
${TextArea}                   xpath=//div[@id="cke_editor-editor-diagn-editor-psdi"]
${TextAreaEdit}               xpath=//body[@contenteditable="true"]/p
${Campo1Medico}               xpath=//input[@id="inp:cdPrestadorAssinatura"]
${CampoTecnico}               xpath=//input[@id="inp:cdPrestadorRealizadoPorTec"]
${Textos}                     xpath=//a[@title="Inserir textos pré-definidos"]
${DivTexto}                   xpath=//tr[@role="row"]/td[contains(text(),"0002")]
### Botoes ###

${BtnOk}                      xpath=//li[@class='notification-buttons']/button
${BtnOkTextos}                xpath=//td[@class="cke_dialog_ui_hbox_first"]/a
${BtnVizualizarFiltro}        xpath=//button[@id="blParametros_btnPesquisar"]
${BtnPesquisar}               xpath=//button[@id="btnPesquisar"]
${MensagemRecebida}           xpath=//div[@class="notifications-item-body"]/p
${BtnLaudar}                  xpath=//button[@id="btnLaudar"]
${BtnDigitarLaudo}            xpath=//button[@id="btnDigitarLaudo"]
${BtnGravar}                  xpath=//button[@id="btnGravar"]
${Btnliberar}                 xpath=//button[@id="btnLiberarLaudo"]
${BtnConfirmar}               xpath=//button[@id="btnConfirmar"]

### Diversos ###
${CheckBox}                   xpath=//div[@class="ui-checkbox"]/button