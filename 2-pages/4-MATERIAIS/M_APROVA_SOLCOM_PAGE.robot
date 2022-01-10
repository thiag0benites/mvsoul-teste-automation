##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de aprovação de uma de solicitação de compra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${inputCodigo}    xpath=//input[@class='editor-text mode-search']
${campoNdFornecedor}    xpath=/html/body/div[2]/div/div[2]/div/div/form/div[3]/fieldset/div/fieldset[2]/div/fieldset[1]/div/div/div[4]/div[3]/div/div/div[1]/div
