##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${notification}                         xpath=//p[@class="notifications-item-text"]
${btnPesquisar}                         xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecute}                           xpath=//nav[5]/div/div[1]/ul/li/ul/li[2]
${proxRegistroBtn}                      xpath=//li[@id='tb-record-next']//a
