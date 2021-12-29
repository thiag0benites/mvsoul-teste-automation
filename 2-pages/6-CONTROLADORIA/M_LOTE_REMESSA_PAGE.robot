##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Lotes de Remessa
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescricao}    xpath=//input[@id="inp:dsLoteRemessa"]
${BotaoLovProcesso}    xpath=//div[@id="cdProcesso"]/button
${CampoTpBordero}    xpath=//input[@id="tpCodBarra_ac"]
${CampoDtPagamento}    xpath=//input[@id="inp:dtPagamento"]
${BotaoOK}        xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${CampoFornecedor}    xpath=//div[@data-member="CD_FORNECEDOR"]/..
${BotaoLovFornecedor}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-search"]/button
${CbSelContaPagar}    xpath=//button[@data-column="PAGE_CTAPAG_grdItconPag_col0"]
${BotaoAssociar}    xpath=//button[@id="PAGE_CTAPAG_btnMoverTodos1"]
${BotaoSim}       xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${CbContaPagarLote}    xpath=//button[@data-column="PAGE_CTAPAG_grdLoteRemItconPag_col0"]
${BotaoRemover}    xpath=//button[@id="PAGE_CTAPAG_btnMoverTodos2"]
${BotaoNotificacao}    xpath=//li[@id="notifications"]/a
