##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
#${campoDtInicial}                            xpath=//input[@id="inp:dtInicio"]
${campoEditorTexto}                          xpath=//input[@class='editor-text mode-edit']
${camposUndefined}                           xpath=//input[@id="undefined_ac"]
${campoMensagem}                             xpath=//textarea[@id="inp:regraTpAuditPsih_dsMensagem"]

### Botoes ###
${btnTipoAntimic}                            xpath=//button[@id="rb_SnRestrito_Ambos_btn"]
${btnTodos}                                  xpath=//button[@id="inp:snTodos_btn"]
${btnPesquisar}                              xpath=//button[@id="btnPesquisar"]
${btnCheckProduto}                           xpath=//div[@id='grdVAuditPresc']//button[@data-member='CHK_PROD_P_AVAL_OU_AUDIT']
${btnAuditarProd}                            xpath=//button[@id="btAudProd"]
${btnOk}                                     xpath=//button[@class='btn btn-primary'][text()='OK']
${btnAdicionar}                              xpath=//li[@id="tb-record-add"]/a/i
${btnSalvar}                                 xpath=//li[@id="tb-record-save"]/a/i
${btnVoltar2}                                xpath=//button[@id="btVoltar2"]
${btnVoltar1}                                xpath=//*[@id="btVoltar1"]
${btnDtInicio}                               xpath=//*[@id="dtInicio"]/button

### Diversos ###
${selecionaAno}                              xpath=//*[@id="ui-datepicker-div"]/div/div/select[2]
${ano2020}                                   xpath=//*[@id="ui-datepicker-div"]/div/div/select[2]/option[10]
${selecionaDia}                              xpath=//*[@id="ui-datepicker-div"]/table/tbody/tr[4]/td[4]/a

