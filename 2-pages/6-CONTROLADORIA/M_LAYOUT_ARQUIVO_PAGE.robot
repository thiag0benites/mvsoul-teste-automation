##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_LAYOUT_ARQUIVO
${MensagemToast}                                    xpath=//p[@class="notifications-item-text"]  
${campoCodigo}                                      xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoDescricao}                                   xpath=//div[@class='slick-cell b1 f1 selected']
${campoDescricaoInput}                              xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoBanco}                                       xpath=//div[@class='slick-cell b2 f2 selected']
${campoBancoInput}                                  xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoVersao}                                      xpath=//div[@class='slick-cell b10 f10 selected ui-fixed-width']
${campoVersaoInput}                                 xpath=//div[@class='slick-cell b10 f10 selected ui-fixed-width active editable']//input
${checkboxEmpresa}                                  xpath=//div[@class='slick-cell b7 f7 selected ui-fixed-width']//button
${checkboxData}                                     xpath=//div[@class='slick-cell b8 f8 selected ui-fixed-width']//button
${checkboxHora}                                     xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width']//button
${btnSalvar}                                        xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
