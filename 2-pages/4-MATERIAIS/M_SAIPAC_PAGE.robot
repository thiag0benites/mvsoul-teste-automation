##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina saida de produtos do paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de Calculo da Depreciação do Bem 
${btnSimNotific}        xpath=//*[@id="frames9"]
${cpEstoque}            xpath=//*[@id="inp:cdEstoque"]
${cpAtendimento}        xpath=//*[@id="inp:cdAtendimento"]
${btnCodProduto}        xpath=//*[@id="btnCdProduto"]
${btnSalvar}            xpath=//*[@id="tb-record-save"]
