##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_PRODUTO_FRACIONAMENTO
${campoEstoque}                             xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${CampoCodProduto}                          xpath=//div[@id='cdProduto']//input[@id='inp:cdProduto']
${CampoLote}                                xpath=//input[@id='inp:cdLote']
${CampoQuantidade}                          xpath=//input[@id='inp:qtProduto']
${CampoUnidade}                             xpath=//input[@id='inp:cdUnidade']
${CampoUnidFracionado}                      xpath=//input[@id='inp:cdUniProFracionado']