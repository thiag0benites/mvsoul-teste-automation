##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de M_PACOTE
${abaExcecoes}                          xpath=//ul//li[@aria-controls='CGTAB_PAGE-EXCECOES']
${grupoProced}                          xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${grupoProcedInput}                     xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${procedimento}                         xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${procedimentoInput}                    xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${setor}                                xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${setorInput}                           xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${acomodacao}                           xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${acomodacaoInput}                      xpath=//div[@id='EXCECOES_grdPacoteExcecao']//div[@class='slick-cell b6 f6 selected ui-fixed-width active editable']//input