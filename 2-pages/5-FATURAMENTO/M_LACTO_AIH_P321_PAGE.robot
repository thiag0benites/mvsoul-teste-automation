##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_LACTO_AIH_P321
${ElementoMsgRecebida}                  xpath=//p[@class='notifications-item-text']
${notification}                         xpath=//p[@class="notifications-item-text"]
${btnPesquisar}                         xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${campoCodAtend}                        xpath=//div[2]/div/div[3]/div/div/form/div/div/div[2]/div/fieldset[1]/div/div[1]/input
${btnExecutar}                          xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${campoPaciente}                        xpath=//div[2]/div/div[3]/div/div/form/div/div/div[2]/div/fieldset[1]/div/div[6]/span
${abaContas}                            xpath=//div[2]/div/div[3]/div/div/form/div/div/ul/li[3]/a
${abaItens}                             xpath=//div[2]/div/div[3]/div/div/form/div/div/ul/li[4]/a
${abaCriticas}                          xpath=//div[2]/div/div[3]/div/div/form/div/div/ul/li[5]/a
${btnSalvar}                            xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoNrAIH}                           xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoProced}                          xpath=//div[2]/div/div[3]/div/div/form/div/div/div[3]/div/fieldset[2]/div/div[1]/input
${campoCID}                             xpath=//div[2]/div/div[3]/div/div/form/div/div/div[3]/div/fieldset[2]/div/div[3]/input
