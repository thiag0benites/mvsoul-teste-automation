##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_TISS_CONFIGURACAO
${btnSeguinte}                                  xpath=//li[@id='tb-record-next']//a
${btnPesquisar}                                 xpath//div[2]/div/div[3]/div/div/form/div/fieldset/div/fieldset[2]/div/button[2]
${btnOk}                                        xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[2]/button
${btnExecutar}                                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnDetalhamento}                              xpath=//button[@id='TAB_PRINCIPAL_btnDetalhamento']
${campoServico}                                 xpath=//div[2]/div/div[3]/div/div/form/div/fieldset/div/fieldset[2]/div/div[7]/select/option[9]
${campoConvenio}                                xpath=//div[@id='nmConvenio']
${buttonSelect}                                 xpath=//div[2]/div/div[3]/div/div/form/div/fieldset/div/fieldset[2]/div/div[7]/button
${campoDetalhamento}                            xpath=//select[@id='inp:dsIdSrvProto']
${campoValorPreencher}                          xpath=//input[@id='tpPreenchimento_ac']
${campoValorFixo}                               xpath=//input[@id='inp:dsValorFixo']
${btnSalvar}                                    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ElementoMsgRecebida}                          xpath=//p[@class="notifications-item-text"]
${minimizeNotification}                         xpath=//nav[5]/div/div[2]/ul/li[1]/a/span