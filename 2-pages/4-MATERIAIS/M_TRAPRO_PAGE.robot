##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de M_TRAPRO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3


${inputEstoqueOrigem}                id=inp:cdEstoque

${campoEstoqueDestino}               id=cdEstoqueDestino
${inputEstoqueDestino}               id=inp:cdEstoqueDestino

${CampoProduto}                      xpath=//div[@class="slick-cell b1 f1 selected"]//div[@data-row='0']
${inputProduto}                      xpath=

${CampoLote}                         xpath=//div[@class='slick-cell b3 f3 selected']//div[@data-row='0']
${inputLote}                         xpath=

${CampoQtdTransferencia}             xpath=//div[@class='slick-cell b7 f7 selected']//div[@data-row='0']
${inputQtdTransferencia}             xpath=


${btnSim}                            xpath=//button[@data-member='BTN_PRODUTOS']
${btnOk}                             xpath=//button[@class='btn btn-primary']


