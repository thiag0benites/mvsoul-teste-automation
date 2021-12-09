##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_REGRA
${cpDescricao}          xpath=//input[@id="#frames12"]
${elemCirMesmaVia}      xpath=//div[@class="slick-cell b2 f2 ui-fixed-width selected"]
${cpCirMesmaVia}        xpath=//input[@id="#frames14"]
${elemCirViaDiferente}      xpath=//div[@class="slick-cell b3 f3 ui-fixed-width selected"]
${cpCirViaDiferente}        xpath=//input[@id="#frames16"]
${elemLimiteOPME}           xpath=//div[@class="slick-cell b11 f11 slick-last-cell ui-fixed-width selected"]
${cpLimiteOPME}             xpath=//input[@id="#frames18"]
${checkBoxI}                xpath=//button[@title="I"]
${btnSalvar}                xpath=//i[@class="mv-basico-salvar"]
${elemcodigo}               xpath=//*[@class="ui-text ui-state-readonly ui-state-disabled"]
${mensagemPop}              xpath=//*[@id="notifications"]/ul/li/div