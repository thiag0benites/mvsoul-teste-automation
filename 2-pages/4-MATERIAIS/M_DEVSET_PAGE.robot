##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_DEVSET 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_DEVSET
${cpEstoque}            xpath=//input[@name="cdEstoque"]
${cpSetor}              xpath=//input[@name="cdSetor"]
${cpMotivo}             xpath=//input[@name="cdMotDev"]
${elemProduto}          xpath= //div[@class="slick-cell b1 f1 selected"]
${cpProduto}            xpath=//input[@id="#frames14"]
${elemQtdade}           xpath=//div[@class="slick-cell b7 f7 selected"]
${cpQtdade}             xpath=//*[@id="#frames18"]
${btnsalvar}            xpath=//i[@class="mv-basico-salvar"]