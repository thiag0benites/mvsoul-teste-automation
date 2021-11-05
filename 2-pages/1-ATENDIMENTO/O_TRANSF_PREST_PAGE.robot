##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de O_TRANS_PREST
${inputAtend}                       xpath=//input[@id='inp:cdAtendimento']
${searchBtn}                        xpath=//button[@id='btnCdAtendimento']
${inputPrestadorDestino}            xpath=//input[@id='inp:cdPrestadorDestino']
${textareaMotivo}                   xpath=//textarea[@id='inp:dsMotivo']
${servicoTable}                     xpath=//div[@class='slick-cell b5 f5 selected ui-fixed-width']
${servicoTableInput}                xpath=//div[@class='slick-cell b5 f5 selected ui-fixed-width active editable']//input
${buttonTransferencia}              xpath=//button[@id='butConfTranf']