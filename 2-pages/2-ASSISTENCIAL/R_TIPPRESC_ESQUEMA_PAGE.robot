##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}                xpath=//input[@id="inp:dtInicio"]
${BotaoLovEsquema}               xpath=//div[@id="CV_TAB_PADRAO_cdTipEsq"]/button
${BotaoImprimir}                 xpath=//button[@data-action="btnGerarRelatorio_click"]   