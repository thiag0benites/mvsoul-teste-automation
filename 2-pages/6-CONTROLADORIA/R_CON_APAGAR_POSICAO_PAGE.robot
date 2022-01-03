##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página    de Acompanhamento de Solicitacoes de Compras
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoDataIni}            xpath=//input[@id="inp:dtInicial"]
${CampoDataFim}            xpath=//input[@id="inp:dtFinal"]
${CampoPlano}              xpath=//input[@id="inp:cdPlano"]
${BotaoImprimir}           xpath=//button[@data-member="BTN_GERAR_RELATORIO"]


