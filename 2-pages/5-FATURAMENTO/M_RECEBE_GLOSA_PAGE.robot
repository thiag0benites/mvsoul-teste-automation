##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de M_RECEBE_GLOSA.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${HomeXpathBtnPesquisaInput}    id=menu-filter-1
${HomeXpathBtnPesquisa}    xpath=//li[@class="menu-search"]
${ScreenRecebeGlosa}    xpath=//section[@id='workspace-menubar']//a[@title='Recebimento de Recurso de Glosas']//span
${campoLote}      xpath=//input[@id="inp:cdContaFfcv"]
${campoDtRecebimento}    xpath=//input[@id="inp:dtRecebimento"]
${checkBoxRecTotal}    xpath=//button[@id="inp:chkVlRecebido_btn"]
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${MensagemToast}    xpath=//li[@class="notification-info"]
${btnOk}          xpath=//li[@class="notification-buttons"]/button[text()="OK"]
