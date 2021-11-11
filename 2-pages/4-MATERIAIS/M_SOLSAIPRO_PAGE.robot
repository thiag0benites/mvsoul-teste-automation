##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitações de Produtos ao Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${RbSetor}                            xpath=//button[@id="rb_TpSolsaiPro_Setor_btn"]
${BotaoLovEstoque}                    xpath=//div[@id="cdEstoque"]/button
${BotaoLovSetor}                      xpath=//div[@id="cdSetor"]/button
${CampoCdProduto}                     xpath=//div[@data-member="CD_PRODUTO"]/..
${CampoCdProdutoEditavel}             xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoQtd}                           xpath=//div[@data-member="QT_SOLICITADO"]/..   
${CampoQtdEditavel}                   xpath=//input[@class="editor-text mode-edit"]
${MensagemToast}                      xpath=//div[@class="notifications-item-body"]/p
${BotaoNao}                           xpath=//li[@class="notification-buttons"]/button[text()="Não"]    
${BotaoSim}                           xpath=//li[@class="notification-buttons"]/button[text()="Sim"]    
${EstoqueSelecionado}                 xpath=//span[@title="ALMOXARIFADO"]