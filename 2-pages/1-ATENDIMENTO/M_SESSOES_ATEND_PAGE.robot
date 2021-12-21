##################################################################################################################################
# Autor: leticia Andrade
# Decrição: Elementos e metodos da página 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${botaoOkSessoes}                         xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[2]/button
${campoHora}                              xpath=//div[@class='slick-cell b2 f2 selected']
${campoHoraInput}                         xpath=//div[@class='slick-cell b2 f2 selected active editable']//input
${campoQuantidade}                        xpath=//div[@class='slick-cell b3 f3 selected']
${campoQuantidadeInput}                   xpath=//div[@class='slick-cell b3 f3 selected active editable']//input
${campoAtendimento}                       xpath=//input[@id='inp:cdAtendimento']
${dataAtend}                              xpath=//div[@id='grdAtendimeSessao']//div[@class='slick-cell b1 f1 selected']
${dataAtendInput}                         xpath=//div[2]/div/div[2]/div/div/form/div[1]/fieldset/div/fieldset[1]/div/fieldset[1]/div/div/div[4]/div[3]/div/div[1]/div[2]/div/input[2]
${btnPesquisar}                           xpath=//li[@id='tb-search']//a
${btnExecutar}                            xpath=//li[@id='tb-execute']//a
${btnSalvar}                              xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ElementoMsgRecebida}                    xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[1]/div
