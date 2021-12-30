##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Relatorio de Pacientes Atendidos por Origem
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovOrigem}            xpath=//div[@id="CV_TAB_PADRAO_cdOriAte"]/button
${CampoDtInicial}            xpath=//input[@id="inp:dtInicial"]
${BotaoImprimir}             xpath=//button[@data-action="btnGerarRelatorio_click"]