##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_TISS_SOLICITACAO
${inputAtendimento}                         xpath=//input[@id='inp:cdAtendimento']
${buttonCriarGuia}                          xpath=//button[@id='TAB_ATENDIMENTO_btCriar']
${procedimentoTable}                        xpath=//div[@id='TAB_ATENDIMENTO_grdProcAtendimento']//div[@class='slick-cell b0 f0 selected']
${procedimentoTableInput}                   xpath=//div[@id='TAB_ATENDIMENTO_grdProcAtendimento']//div[@class='slick-cell b0 f0 selected active editable']//input
${buttonAutorizar}                          xpath=//button[@id='TAB_ATENDIMENTO_btAutorizar']
${buttonNao}                                xpath=//li[@class='notification-buttons']//button[2]