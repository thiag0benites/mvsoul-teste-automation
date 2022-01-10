##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${buttonSim}                       xpath=//li[@class='notification-buttons']//button[2]
${campoData}                       xpath=//div[@class='slick-cell b3 f3 selected']
${campoDataInput}                  xpath=//div[@class='slick-cell b3 f3 selected active editable']//input
${ElementoMsgRecebida}             xpath=//p[@class='notifications-item-text']
${campoProduto}                    xpath=//div[@class='slick-cell b1 f1 selected']
${campoProdutoInput}               xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoLote}                       xpath=//div[@class='slick-cell b2 f2 selected']
${campoLoteInput}                  xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoQuantidade}                 xpath=//div[@class='slick-cell b5 f5 selected']
${campoQuantidadeInput}            xpath=//div[@class='slick-cell b5 f5 selected active editable']//input
${buttonSetor}                     xpath=//button[@id='rb_TpSolsaiPro_Setor_btn']
${campoSolicitaEstoque}            xpath=//input[@id='inp:cdEstoque']
${campoMotivoDev}                  xpath=//input[@id='inp:cdMotDev']
${campoSetor}                      xpath=//input[@id='inp:cdSetor']
${btnSalvar}                       xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
