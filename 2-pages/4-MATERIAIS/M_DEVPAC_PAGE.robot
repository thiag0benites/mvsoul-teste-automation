##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da pagina Devolução de Produtos Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***
${BotaoLovEstoque}                xpath=//div[@id="cdEstoque"]/button
${CampoAtendimento}               xpath=//input[@id="inp:cdAtendimento"] 
${BotaoLovMotivo}                 xpath=//div[@id="cdMotDev"]/button
${BotaoDigCodProduto}             xpath=//button[@id="btnCdProduto"]
${CampoCdProduto}                 xpath=//div[@data-member="CD_PRODUTO"]/..
${CampoLovEdit}                   xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQtdRecebida}               xpath=//div[@data-member="QT_MOVIMENTACAO"]/..
${CampoEdit}                      xpath=//input[@class="editor-text mode-edit"]            





