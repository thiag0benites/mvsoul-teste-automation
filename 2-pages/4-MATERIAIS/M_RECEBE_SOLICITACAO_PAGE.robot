##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina 
${inputSolicitacao}                         xpath=//input[@id='inp:cdSolsaiPro']
${inputUsuarioResp}                         xpath=//input[@id='inp:cdUsuarioEntrega']
${checkboxConfirmar}                        xpath=//div[@class='slick-cell b0 f0 selected']//button
${botaoConfirmar}                           xpath=//button[@id='btnConfirmar']
${MensagemSalvar}                           xpath=//p[@class="notifications-item-text"]