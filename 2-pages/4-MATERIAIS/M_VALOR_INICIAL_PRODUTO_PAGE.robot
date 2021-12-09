##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Campos da tela de M_VALOR_INICIAL_PRODUTO
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${campoProduto}    xpath=//div[@class="slick-cell b0 f0 selected ui-fixed-width"]
${campoProdutoInput}    xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[2]/div/fieldset/div/div/div[4]/div[3]/div/div/div[1]/div/input
${campoValorCustos}    xpath=//div[@class="slick-cell b3 f3 slick-last-cell selected ui-fixed-width"]
${campoValorCustosInput}    xpath=//div[@class="slick-cell b3 f3 slick-last-cell selected ui-fixed-width active editable"]//input[@row="0"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
