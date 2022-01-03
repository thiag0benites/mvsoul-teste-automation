##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página    de Acompanhamento de Solicitacoes de Compras
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoDataIni}        xpath=//input[@id="inp:dtInicio"]
${CampoDataFim}          xpath=//input[@id="inp:dtFinal"]
${BotaoImprimir}       xpath=//button[@data-member="BTN_GERAR_RELATORIO"]

