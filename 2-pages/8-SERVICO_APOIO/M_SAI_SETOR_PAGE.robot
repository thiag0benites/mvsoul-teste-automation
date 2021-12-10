##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Saída para setor
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEstoque}                    xpath=//div[@id="cdEstoque"]/button
${BotaoLovUndInter}                   xpath=//div[@id="cdUnidInt"]/button
${CampoPeca}                          xpath=//div[@data-member="CD_TP_PECAS"]/..
${BotaoLovPeca}                       xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button
${CampoQuantidade}                    xpath=//div[@data-member="QT_QUANTIDADE"]/.. 
${CampoQuantidadeEditavel}            xpath=//input[@class="editor-text mode-edit"]
${MensagemSucesso}                    xpath=//p[@class="notifications-item-text"][text()="Atenção: Registro(s) Salvo(s) com Sucesso!"]