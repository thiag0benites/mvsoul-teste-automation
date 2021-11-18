##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de Ordens de compra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3


${inputCodigo}                       xpath=//input[@class='editor-text mode-search']


${campoDescricaoSetor}               xpath=//div[@class='slick-cell b3 f3 selected']//div[@data-row='0']
${btnAprovacao}                      xpath=//div[@class='slick-cell b8 f8 slick-last-cell selected ui-label-position-default mode-edit']//button[@data-member='BTN_APROVACAO']

${btnNaoAutorizar}                   xpath=//button[@data-name='btnNAutorizar']

${mensagemNaoAprovada}               xpath=/html/body/nav[5]/div/div[2]/ul/li[1]/ul/li[1]/div/div[2]/p

${btnOk}                             xpath=//button[@class='btn btn-primary']



