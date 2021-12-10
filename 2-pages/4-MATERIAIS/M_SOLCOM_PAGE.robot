##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina solicitção de compras
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de Calculo da Depreciação do Bem 
${cpCalendario}         xpath=(//span[@class="ui-button-icon ui-icon mv-basico-calendario"])[2]
${linkDate}             xpath=(//a[@href="#"])[28]
${cpDtMaxima}           xpath=//input[@name="dtMaxima"]
${cpSetor}              xpath=//*[@id="inp:cdSetor"]
${cpNomeSolicitante}     xpath=//*[@id="inp:nmSolicitante"]
${cpMotivo}             xpath=//*[@id="inp:cdMotPed"]
${cpComprador}          xpath=//*[@id="inp:cdCotador"]
${cpEstoque}            xpath=//*[@id="inp:cdEstoque"]
${cpProduto}            xpath=//*[@id="grdItsolCom"]/div[4]/div[3]/div/div/div[2]
${inpProduto}           xpath=//*[@id="#frames36"]
${mensagemPop}          xpath=//*[@id="notifications"]/ul/li[1]/div
${btnSim}               xpath=//*[@id="frames38"]
${btnSim2}              xpath=//*[@id="frames42"]
${cpQtdSolicitada}      xpath=//*[@id="grdItsolCom"]/div[4]/div[3]/div/div/div[5]
${inpQtdSolicitada}     xpath=//*[@id="#frames47"]
${btnSalvar}            xpath=//*[@id="tb-record-save"]
${msgEsperadaSalvar}    xpath=//*[@id="notifications"]/ul/li[1]/div
${btnSim3}              xpath=//*[@id="frames50"]