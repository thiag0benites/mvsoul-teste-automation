##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${DivPresc}       xpath=//div[@class="slick-cell b11 f11 selected"]
${CampoPresc}     xpath=//input[@class="editor-text mode-search"]
${BotaoImprimir}    xpath=//button[@id="btnImprimir"]
${BotaoImprimirFim}    xpath=//button[@data-member="BTN_IMPRIMIR"][@data-block="COMUM"]
