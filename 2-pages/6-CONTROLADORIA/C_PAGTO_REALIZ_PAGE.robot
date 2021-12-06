##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de C_PAGTO_REALIZ
${campoDataInicial}                             xpath=//input[@id='inp:dtInicial']
${campoDataFinal}                               xpath=//input[@id='inp:dtFinal']