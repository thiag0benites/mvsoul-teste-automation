##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_TISS_CONFIGURACAO
${btnPesquisar}                                 xpath=
${btnExecutar}                                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a${btnOk}                                        xpath=
${btnDetalhamento}                              xpath=
${campoServico}                                 xpath=
${campoDetalhamento}                            xpath=
${campoValorPreencher}                          xpath=
${campoValorFixo}                               xpath=
${btnSalvar}                                    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ElementoMsgRecebida}                          xpath=//p[@class="notifications-item-text"]