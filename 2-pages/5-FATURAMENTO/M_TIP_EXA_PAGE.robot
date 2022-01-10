##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Elementos e metodos da tela de M_TIP_EXA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoCodSIA}                                    xpath=//input[@id='inp:cdProcedimentoSia']
${inputDescricao}                                 xpath=//input[@id='inp:dsExaRx']
${ElementoMsgRecebida}                            xpath=//p[@class='notifications-item-text']
${btnSalvar}                                      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoObservacao}                                xpath=//textarea[@id='inp:dsOrientacao']
${campoCodEmpresa}                                xpath=//input[@id='inp:cdMultiEmpresa']