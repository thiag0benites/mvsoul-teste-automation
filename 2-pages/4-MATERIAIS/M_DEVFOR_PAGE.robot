##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_DEVFOR - Devolução de produtos para fornecedores
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de baixa de produtos
${cpEntrada}            xpath=//input[@name="cdEntPro"]
${cpNrDoc}              xpath=//input[@name="nrDocumento"]
${cpSerie}              xpath=//input[@name="nrSerie"]
${cpMotivo}             xpath=//input[@name="cdMotDev"]
${elemProduto}           xpath=//div[@class="slick-cell b0 f0 selected ui-fixed-width"]
${inpProduto}           xpath=//input[@id="#frames10"]
${eleQtdDevolvida}      xpath=//div[@class="slick-cell b8 f8 selected ui-fixed-width"]
${inpQtdDevolvida}      xpath=//input[@id="#frames12"]
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]/div
${btnSim}               xpath=//button[@id="frames14"]
