##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoConvenio}    xpath=//input[@id="inp:cdConvenio"]
${CampoEmEdicao}    xpath=//input[@class="editor-text mode-edit"]
${CampoMotivoAceite}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="2"]
${CampoMotivoGlosa}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="2"]
${DivProcedimento}    xpath=//div[contains(@class,"ItemVermelho")]
${DivValorPreAceito}    xpath=//div[@data-member="VL_GLOSA_PRE_ACEITA"][@data-row="2"]/..
${DivMotivoAceite}    xpath=//div[@data-member="CD_MOTIVO_ACEITE"][@data-row="2"]/..
${DivMotivoGlosa}    xpath=//div[@data-member="CD_MOTIVO_GLOSA"][@data-row="2"]/..
### Botoes ###
${btnGerarSped}    xpath=//button[@data-member="BTN_CONFIRMA"]
${btnOK}          xpath=//li[@class="notification-buttons"]/button
${btnExecutar}    xpath=//a[@title="Executar Consulta"]
### Diversos ###
${Alerta}         xpath=//p[@class="notifications-item-text"]
${BuscaLinha}     xpath=//div[contains(@class,"ItemVermelho")]/div
