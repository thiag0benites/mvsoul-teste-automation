##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_CANORD
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BROWSER}    chrome
${SLEEP}      3


${inputCodigo}                       xpath=//input[@class='editor-text mode-search']

${campoNomeFornecedor}               xpath=//div[@class='slick-cell b2 f2 selected']//div[@data-row='0']

${btnProdutos}                       xpath=//button[@data-member='BTN_PRODUTOS']

${btnCancelarQtdePendente}           xpath=//button[@data-member='BTN_CANCELA_PEND']

${mensagemCancelarQntPendente}       xpath=/html/body/nav[5]/div/div[2]/ul/li[1]/ul/li[1]/div/div[2]/p

${btnOk}                             xpath=//button[@class='btn btn-primary']



