##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de Impressão de Fatura
${classLasDisplay}      class=las-display
${IdIframe}             id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnAdicionar}         xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${btnSalvar}            xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnExecute}           xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnNaoNotifications}  xpath=//li[@class='notification-buttons']//button[2]
${btnSimNotifications}  xpath=//li[@class='notification-buttons']//button[1]
*** Keywords ***
