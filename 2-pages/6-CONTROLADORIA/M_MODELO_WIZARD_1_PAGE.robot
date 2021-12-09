##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de M_MODELO_WIZARD_1
${campoCodigo}                          xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${campoDescricao}                       xpath=//div[@class='slick-cell b1 f1 selected']
${campoDescricaoInput}                  xpath=//div[@class='slick-cell b1 f1 selected active editable']//input
${mensagem}                             xpath=//p[@class="notifications-item-text"]