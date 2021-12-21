##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoDtPreAtend}                          xpath=//input[@id="inp:dtPreAtendimento"]

### Botoes ###
${btnSenhaAtend}                            xpath=//button[@id="atendidos_btn"]
${btnExecConsulta}                          xpath=//button[@id="btnExecutar"]
${btnImprimir}                              xpath=//button[@id="btnImprimir"]
${btnCheckboxRelatorio}                     xpath=//div[@id="grdRepoAte"]//div[@data-member='DSP_SN_MARCADO']/button[@data-rowid='AAAcD0AAUAAABunAAB']
${btnExecutar}                              xpath=//button[@id="chamaRelatorio"]
${btnEnviar}                                xpath=//td[@class='stiJsViewerClearAllStyles'][text()='Enviar']

### Diversos ###

