##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de Ordens de compra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${inputCodigo}    xpath=//input[@class='editor-text mode-search']
${campoNomeDoFornecedor}    xpath=//div[@class='slick-cell b5 f5 selected']//div[@data-row='0']
