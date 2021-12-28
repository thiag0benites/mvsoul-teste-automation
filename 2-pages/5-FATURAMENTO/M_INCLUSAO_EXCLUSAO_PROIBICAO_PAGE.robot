##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de    Inclusao e Exclusao de Proibição
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoProced}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="8"]
${BotaoConvenios}    xpath=//button[@id="inp:cbTodosConvenios_btn"]
${DivConvenio}    xpath=//div[@class="slick-cell b0 f0 active selected"]
${CampoConvenio}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoEmpresa}    xpath=//input[@id="inp:cdPadrao"]
${BotaoSetores}    xpath=//button[@id="inp:cbTodosSetores_btn"]
${CampoDataIni}    xpath=//input[@id="inp:dtInicialProibicao"]
${CampoDataFim}    xpath=//input[@id="inp:dtFimProibicao"]
${CampoJustificativa}    xpath=//input[@id="inp:justificativa"]
${AbaProcedimentos}    xpath=//a[@id="TAB_ITEM_TAB_ITEM_tab1"]
${BotaoIncluir}    xpath=//button[@id="btnIncluirProibicao"]
${BotaoExcluir}    xpath=//button[@data-member="BTN_EXCLUIR_PROIBICAO"]
${btnOk}          xpath=//li[@class="notification-buttons"]/button[text()="OK"]
