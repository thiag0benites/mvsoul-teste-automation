##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da tela de M_TRAPRO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3


${inputEstoqueOrigem}                xpath=//*[@id="inp:cdEstoque"]
${inputEstoqueDestino}               xpath=//input[@name="cdEstoqueDestino"]
${cpNrDoc}                           xpath=//*[@id="inp:nrDocumento"]
${CampoProduto}                      xpath=//*[@id="grdItmvtoEstoque"]/div[4]/div[3]/div/div/div[2]
${inputProduto}                      xpath=//*[@id="#frames8"]
${cpQtd}                             xpath=//div[@title="0,0000"]
${inpQtd}                            xpath=//*[@id="#frames10"]
${btnConcluir}                      xpath=//*[@id="btnConcluir"]
${cpCodigo}                         xpath=//*[@id="inp:cdMvtoEstoque"]
${btnNao}                           xpath=//*[@id="frames13"]
