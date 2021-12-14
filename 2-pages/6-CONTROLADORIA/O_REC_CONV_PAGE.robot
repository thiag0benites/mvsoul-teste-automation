##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoFiltro}                   xpath=//input[@id="#filterLov"]
${campoNrDocumento}              xpath=//input[@id="inp:nrDocumento"]
${campoDtRecebimento}            xpath=//input[@id="inp:dtRecebimento"][@name='dtRecebimento']
${campoReceb}                    xpath=//input[@class='editor-text mode-edit']
${campoNrRef}                    xpath=//input[@id="inp:nrIdNotaFiscal"]


### Botoes ###
${btnEmpresa}                    xpath=//div[@id="cdMultiEmpresa"]/button
${btnFiltrar}                    xpath=//button[@id="btfilter"]                         
${btnOk}                         xpath=//button[@id="btok"]
${btnConvenio}                   xpath=//div[@id="cdConvenio"]/button
${btnExecutarConsulta}           xpath=//li[@id="tb-execute"]/a/i
${btnContaCorrente}              xpath=//div[@id="PAGE_RECEBIMENTO_cdConCor"]/button
${btnContasItensNF}              xpath=//a[@id="CV_PAGE_CV_PAGE_tab2"]
${btnEfetuarReceb}               xpath=//button[@id="btnConfirma"]

### Diversos ###
${empresaValidada}               xpath=//span[contains(@title, "5 - HOSPITAL MV - MATRIZ")]
${convenioFiltrado}              xpath=//div[@data-member='DSP_NM_CONVENIO']
${contaCorrenteFiltrada}         xpath=//div[@title='ITAU HOBRA - 5']
${clickReceb}                    xpath=//*[@data-member='VL_RECEBIMENTO']/..

