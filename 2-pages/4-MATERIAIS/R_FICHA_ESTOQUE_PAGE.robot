##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de R_FICHA_ESTOQUE
${campoEstoque}                                  xpath=//input[@id='inp:cdEstoque']
${campoProduto}                                  xpath=//input[@id='inp:cdProduto']
${botaoImprimirFichaEstoque}                     xpath=//button[@data-member='BTN_GERAR_RELATORIO']