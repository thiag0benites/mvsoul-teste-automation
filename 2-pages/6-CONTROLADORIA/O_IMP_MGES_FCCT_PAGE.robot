##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina O_IMP_MGES_FCCT
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de O_IMP_MGES_FCCT
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenImportEstoque}                 xpath=//section[@id='workspace-menubar']//a[@title='Movimentação']//span
${cpDtProcessamento}        xpath=//input[@name="dtProcessamento"]
${checkTodos}           xpath=//button[@id="inp:ckMarcarTodos_btn"]
${btnConfirmar}         xpath=//*[@id="btnConfirma"]
${codLote}              xpath=//p[@class="notifications-item-text"]
${btnOk}                xpath=