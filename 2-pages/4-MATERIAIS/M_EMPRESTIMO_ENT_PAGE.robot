##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Entrada de Empréstimo
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEstoque}    xpath=//div[@id="cdEstoque"]/button
${BotaoLovSetor}    xpath=//div[@id="cdSetorAplMvtoEstoque"]/button
${BotaoLovFornecedor}    xpath=//div[@id="cdFornecedor"]/button
${BotaoLovCFOP}    xpath=//div[@id="nrCfop"]/button
${CampoDtEmissao}    xpath=//input[@id="inp:dtEmissao"]
${CampoDtEntrada}    xpath=//input[@id="inp:dtEntrada"]
${CampoProduto}    xpath=//div[@data-member="CD_PRODUTO"]/..
${BotaoLovProduto}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoEdit}      xpath=//input[@class="editor-text mode-edit"]
${CampoValidade}    xpath=//div[@class="ui-datefield ui-buttoninput ui-widget mode-edit"]/input[2]
${BotaoConcluir}    xpath=//button[@id="btnConcluir"]
${CampoEstoque}    xpath=//input[@id="inp:cdEstoque"]
