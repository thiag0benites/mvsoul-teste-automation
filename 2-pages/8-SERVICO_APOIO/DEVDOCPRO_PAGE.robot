##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de DEVDOCPRO
${reticencias}          xpath=//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${same}                 xpath=//div[@title="SAME GERAL"]
${bntOk}                xpath=xpath=(//span)[40]
${btnAcessar}                xpath=//button[@id="ok"]
${btnConsultar}             xpath=//*[@id="btnExc"]
${cpProtocolo}          xpath=//input[@name="cdProtocolo"]
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
${btnEscolhaImpressao}      xpath=//span[@class="ui-button-icon ui-icon mv-basico-seta_baixo_simples"]
${elemTela}             xpath=//a[@id="ui-id-12"]
${btnImprimir}          xpath=//button[@id="frames19"]
