##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovPrescricao}            xpath=//div[@id="CV_TAB_PADRAO_cdPreMed"]/button
${BotaoImprimir}                 xpath=//button[@data-action="btnGerarRelatorio_click"]   