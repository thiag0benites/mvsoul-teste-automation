##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Cancelamento de Solicitacao
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***


${CampoEstoque}                 xpath=//input[@id="inp:cdEstoque"]
${CampoUnidade}                 xpath=//input[@id="inp:cdUnidInt"]
${DivProduto}                   xpath=//div[@class="slick-cell b1 f1 selected ui-fixed-width"]
${CampoProduto}                 xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="9"]
${DivQuantidade}                xpath=//div[@data-member="QT_MOVIMENTACAO"]
${CampoQuantidade}              xpath=//input[@class="editor-text mode-edit"]



${BotaoConcluir}                 xpath=//button[@id="btnConcluir"]
${MensagemEsperada}              xpath=//div[@class="notifications-item-body"]/p
${BtnOk}                         xpath=//li[@class='notification-buttons']/button
