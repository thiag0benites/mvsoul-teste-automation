##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina O_PAG
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de Fechamento de Lote
${HomeXpathBtnPesquisaInput}    id=menu-filter-1
${HomeXpathBtnPesquisa}    xpath=//li[@class="menu-search"]
${ScreenPagamentos}    xpath=//section[@id='workspace-menubar']//a[@title='Pagamentos']//span
${dtPeriodo}            xpath=//button[@id="rb_TpPeriodo_DtVencimento_btn"]
${cpDtInicio}           xpath=//input[@name="dataIni"]
${cpDtFim}              xpath=//input[@name="dataFim"]
${cpProcesso}           xpath=//input[@name="cdProcesso"]
${cpContaCorrente}      xpath=//input[@name="cdConCor"]
${checkBox}             xpath=(//*[@class="ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit"])[1]
${btnPagar}             xpath=//button[@id="btnConfirmar"]
${btnOk}                xpath=//*[@class="btn btn-primary"]
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]/div
