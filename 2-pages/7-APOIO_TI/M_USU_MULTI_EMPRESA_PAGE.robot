##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_USU_MULTI_EMPRESA
${campoUsuario}             xpath=//div[@class='slick-cell b2 f2 slick-last-cell selected DefaultItemMv MVTIFontStyle047 MVTIColorStyle004 ui-fixed-width active editable']//input
${campoEmpresa}             xpath=//div[@class='slick-cell b0 f0 selected DefaultItemMv MVTIFontStyle047 MVTIColorStyle004 ui-fixed-width active editable']
${notificacao}              xpath=//p[@class="notifications-item-text"]