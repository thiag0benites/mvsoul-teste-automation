##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_TUSS_FFCV
${dataInicioVigencia}                   xpath=//input[@id='inp:dtInicioVigencia']
${btnPesquisar2}                        xpath=//button[@id='btnPesquisar']
${terminologiaInput}                    xpath=//input[@id='dspDsTipTuss_ac']
${campoCodigoInput}                     xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoDescricao}                       xpath=//div[@class='slick-cell b1 f1 selected']
${campoDescricaoInput}                  xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${campoEmpresa}                         xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${campoEmpresaInput}                    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoConvenio}                        xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${campoConvenioInput}                   xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input
${campoProcedimento}                    xpath=//div[@class='slick-cell b4 f4 slick-last-cell selected ui-fixed-width']
${campoProcedimentoInput}               xpath=//div[@class='slick-cell b4 f4 slick-last-cell selected ui-fixed-width active editable']//input
${MensagemToast}                        xpath=//p[@class="notifications-item-text"]
${btnPesquisar}                         xpath=//li[@id='toolbar']//li[@id='tb-search']//a
