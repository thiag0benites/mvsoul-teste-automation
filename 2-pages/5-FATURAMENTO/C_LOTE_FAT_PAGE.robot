##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${campoConvenioLoteFatInput}    xpath=//div[@id='grdFatura']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoDescricaoLoteFat}    xpath=//div[@id='grdFatura']//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${campoDescricaoLoteFatInput}    xpath=//div[@id='grdFatura']//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoCompetenciaLoteFat}    xpath=//div[@id='grdFatura']//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${campoCompetenciaLoteFatInput}    xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[1]/div/fieldset/div/div/div[4]/div[3]/div/div/div[4]/div/input[2]
${campoDataAberturaLoteFat}    xpath=//div[@id='grdRemFat']//div[@class='slick-cell b1 f1 selected']
${campoDataAberturaLoteFatInput}    xpath=//div[@id='grdRemFat']//div[@class='slick-cell b1 f1 selected active editable']//input
${campoDataAberturaInputLoteFat}    xpath=//div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[2]/div/fieldset[1]/div/div/div[4]/div[3]/div/div/div[2]/div/input[2]
${ElementoMsgRecebida}    xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li/div
${btnSalvarLoteFat}    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
