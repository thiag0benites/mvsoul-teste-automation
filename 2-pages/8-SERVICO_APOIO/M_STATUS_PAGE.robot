##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Refeição com Status Aberto
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovRefeicao}                xpath=//div[@id="cdTipoRefeicao"]/button
${BotaoSalvar}                     xpath=//button[@id="salvarImprimir"]
${BotaoSair}                       xpath=//button[@data-action="btnSair_click"] 
