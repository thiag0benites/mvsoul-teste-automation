##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Saída de Produtos para Empréstimo
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEstoque}    xpath=//div[@id="cdEstoque"]/button
${BotaoLovFornecedor}    xpath=//div[@id="cdFornecedor"]/button
${CampoProduto}    xpath=//div[@data-member="CD_PRODUTO"]/..
${CampoQuantMov}    xpath=//div[@data-member="QT_MOVIMENTACAO"]/..
${BotaoLovEdit}    xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoEdit}      xpath=//input[@class="editor-text mode-edit"]
${MensagemLimparTela}    xpath=//div[@class="notifications-item-body"]/p
