##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_DEVSET
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página M_DEVSET
${cpEstoque}      xpath=//input[@name="cdEstoque"]
${cpSetor}        xpath=//input[@name="cdSetor"]
${cpMotivo}       xpath=//input[@name="cdMotDev"]
${elemProduto}    xpath= //div[@class="slick-cell b1 f1 selected"]
${cpProduto}      xpath=//input[@id="#frames14"]
${elemQtdade}     xpath=//*[@id="grdItmvtoEstoque"]/div[4]/div[3]/div/div/div[7]
${cpQtdade}       xpath=//*[@id="#frames17"]
${btnsalvar}      xpath=//i[@class="mv-basico-salvar"]
${cpCodigo}       xpath=//*[@id="inp:cdMvtoEstoque"]
