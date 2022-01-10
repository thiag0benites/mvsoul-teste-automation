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
${btnPesquisaServico}                           xpath=//button[@id='btnPesquisar']
${btnOk}                                        xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[2]/button
${btnExecutar}                                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnDetalhamento}                              xpath=//button[@id='TAB_PRINCIPAL_btnDetalhamento']
${campoServico}                                 xpath=//input[@id='dsSrv_ac']
${optionServico}                                xpath=//select[@id='inp:dsSrv']//option[@value='loteAnexos_3_02_00']
${campoElemento}                                xpath=//input[@id='dsIdSrvProto_ac']
${campoConvenio}                                xpath=//div[@id='nmConvenio']
${clique}                                       xpath=//input[@id='inp:cdConvenio']
${buttonSelect}                                 xpath=//div[2]/div/div[3]/div/div/form/div/fieldset/div/fieldset[2]/div/div[7]/button
${campoDetalhamento}                            xpath=//select[@id='inp:dsIdSrvProto']
${campoValorPreencher}                          xpath=//input[@id='tpPreenchimento_ac']
${campoValorFixo}                               xpath=//input[@id='inp:dsValorFixo']
${btnSalvar}                                    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ElementoMsgRecebida}                          xpath=//p[@class="notifications-item-text"]
${minimizeNotification}                         xpath=//nav[5]/div/div[2]/ul/li[1]/a/span