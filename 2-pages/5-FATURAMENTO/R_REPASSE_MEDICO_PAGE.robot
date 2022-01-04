##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovConvenio}          xpath=//div[@id="CV_TAB_PADRAO_cdConvenio"]/button
${BotaoLovPrestador}         xpath=//div[@id="CV_TAB_PADRAO_cdPrestador"]/button
${CampoCompetencia}          xpath=//input[@id="inp:dtCompet"]  
${BotaoImprimir}             xpath=//button[@data-action="btnGerarRelatorio_click"]