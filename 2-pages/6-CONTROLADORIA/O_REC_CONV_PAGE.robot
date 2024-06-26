##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${campoFiltro}    xpath=//input[@id="#filterLov"]
${campoNrDocumento}    xpath=//input[@id="inp:nrDocumento"]
${campoDtRecebimento}    xpath=//input[@id="inp:dtRecebimento"][@name='dtRecebimento']
${campoReceb}     xpath=//input[@class='editor-text mode-edit']
${campoNrRef}     xpath=//input[@id="inp:nrIdNotaFiscal"]
### Botoes ###
${btnEmpresa}     xpath=//div[@id="cdMultiEmpresa"]/button
${btnFiltrar}     xpath=//button[@id="btfilter"]
${btnOk}          xpath=//button[@id="btok"]
${btnConvenio}    xpath=//div[@id="cdConvenio"]/button
${btnExecutarConsulta}    xpath=//li[@id="tb-execute"]/a/i
${btnContaCorrente}    xpath=//div[@id="PAGE_RECEBIMENTO_cdConCor"]/button
${btnContasItensNF}    xpath=//a[@id="CV_PAGE_CV_PAGE_tab2"]
${btnEfetuarReceb}    xpath=//button[@id="btnConfirma"]
${btnSim}         xpath=//button[@class='btn btn-primary'][text()="Sim"]
${btnOk}          xpath=//button[@class='btn btn-primary'][text()="OK"]
${btnDifRateioEAcresc}    xpath=//button[@id="inp:snLancaDifAcrescimo_btn"]
${btnGlosaNReceb}    xpath=//button[@id="inp:snGlosa_btn"]
${btnVlImpRetidoDisable}    xpath=//*[@id="PAGE_RECEBIMENTO_btnImposto"][@disabled='disabled']
### Diversos ###
${empresaValidada}    xpath=//span[contains(@title, "5 - HOSPITAL MV - MATRIZ")]
${convenioFiltrado}    xpath=//div[@data-member='DSP_NM_CONVENIO']
${contaCorrenteFiltrada}    xpath=//div[@title='ITAU HOBRA - 5']
${clickReceb}     xpath=//*[@data-member='VL_RECEBIMENTO']/..
${clickVlGlosa}    xpath=//div[@data-member='VL_GLOSA']//..
${validacaoVlAcrescimo}    xpath=//div[@data-member='VL_ACRESCIMO'][@title='0,00']
${validacaoNrRef}    xpath=//input[@id='inp:nrIdNotaFiscal'][@title='0000002462']
${validarNRef}    xpath=//input[@id="inp:nrIdNotaFiscal"]
${validaVlNota}    xpath=//input[@id="inp:vlTotalNota"]
