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
${cpAtendimento}        xpath=//input[@name="cdAtendimento"]
${elemCodProduto}        xpath=//div[@class="slick-cell b1 f1 selected"]
${cpProduto}            xpath=//input[@id="#frames9"]
${elemQtd}              xpath=//div[@class="slick-cell b5 f5 selected"]
${cpQtd}                xpath=//div[@title="0,00"]
${btnOk}                xpath=//button[@id="frames11"]
${inpQtd}               xpath=//input[@id="#frames15"]
${btnConcluir}          xpath=//*[@id="btnConcluir"]
${btnOk2}               xpath=//*[@id="frames17"]
${mensagemPop}          xpath=(//div[@class="notifications-item"])[1]
${cpCodigo}             xpath=//*[@id="inp:cdMvtoEstoque"]