##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Gerenciamento de Chamados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovCopa}              xpath=//div[@id="CV_TAB_PADRAO_cdCopa"]/button
${BotaoLovUnidInternacao}    xpath=//div[@id="CV_TAB_PADRAO_cdUnidInt"]/button
${BotaoImprimir}             xpath=//button[@data-action="btnGerarRelatorio_click"]
