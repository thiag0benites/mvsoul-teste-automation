##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de O_RECEBE_SOL
${checkboxRecebe}                   xpath=//div[@class='slick-cell b2 f2']//div[@class='ui-checkbox']//button[@data-row=9]
${btnReceberSolicitacoes}           xpath=//button[@id='btRecebeSol']
${MensagemSalvar}                   xpath=//p[@class="notifications-item-text"]