##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_PACOTE
<<<<<<< HEAD
${notification}                         xpath=//p[@class="notifications-item-text"]
${btnPesquisar}                         xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${abaExcecoes}                          xpath=//ul//li[@aria-controls='CGTAB_PAGE-EXCECOES']
${grupoProced}                          xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${grupoProcedInput}                     xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${procedimentoTable}                    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${procedimentoInput}                    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoSetor}                           xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${setorInput}                           xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${campoAcomodacao}                      xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${acomodacaoInput}                      xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width active editable']//input
${btnSalvar}                            xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnExecute}                           xpath=//li[@id='toolbar']//li[@id='tb-execute']//a

=======
${notification}    xpath=//p[@class="notifications-item-text"]
${btnPesquisar}    xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${abaExcecoes}    xpath=//ul//li[@aria-controls='CGTAB_PAGE-EXCECOES']
${grupoProced}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${grupoProcedInput}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${procedimentoTable}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${procedimentoInput}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoSetor}     xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${setorInput}     xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${campoAcomodacao}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${acomodacaoInput}    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width active editable']//input
${btnSalvar}      xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
>>>>>>> bcff08906ee522c9c978cf264b93ae888b1791ed
