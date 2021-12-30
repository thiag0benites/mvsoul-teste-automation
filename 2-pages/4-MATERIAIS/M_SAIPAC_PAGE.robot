##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina saida de produtos do paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de Calculo da Depreciação do Bem 
#${btnSimNotific}        xpath=//*[@id="frames9"]
${cpEstoque}            xpath=//*[@id="inp:cdEstoque"]
${cpAtendimento}        xpath=//*[@id="inp:cdAtendimento"]
${elemCodProduto}        xpath=//div[@class="slick-cell b1 f1 selected"]
${cpProduto}            xpath=//input[@id="#frames9"]
${elemQtd}              xpath=//div[@class="slick-cell b5 f5 selected"]
${cpQtd}                xpath=
${btnConcluir}          xpath=//*[@id="btnConcluir"]
${btnSalvar}            xpath=//*[@id="tb-record-save"]
