##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaLovCompetencia}    xpath=//div[@id="competencia"]/button
${BotaoLovRemessa}    xpath=//div[@id="PG_FECHAR_cdRemessa"]/button
${BotaoConsistir}    xpath=//button[@id="PG_FECHAR_btConsistir"]
${BotaoVisualizarCriticas}    xpath=//button[@id="PG_FECHAR_btVisualizar"]
${BotaoImprimir}    xpath=//button[@id="btImprimir"]
${BotaoConfirmaImprimir}    xpath=//button[@data-action="btnImprimir_click"]
