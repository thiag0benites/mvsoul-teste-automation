##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_TRAPRO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${inputEstoqueOrigem}    id=inp:cdEstoque
${campoEstoqueDestino}    id=cdEstoqueDestino
${inputEstoqueDestino}    id=inp:cdEstoqueDestino
${CampoProduto}    xpath=//div[@class="slick-cell b1 f1 selected"]
${inputProduto}    xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input[@row='0']
${CampoQtdTransferencia}    xpath=//div[@class='slick-cell b6 f6 selected']
${inputQtdTransferencia}    xpath=//div[@class="slick-cell b6 f6 selected active editable"]//input[@row='0']
${btnOk}          xpath=//button[@class='btn btn-primary']
${btnConcluir}    xpath=//button[@id="btnConcluir"]
${mensagemAlert}    xpath=//div[@class="notifications-item-body notification-item-no-title"]
