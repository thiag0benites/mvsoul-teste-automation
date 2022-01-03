##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página    de Acompanhamento de Solicitacoes de Compras
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoEstoque}        xpath=//input[@id="inp:cdEstoque"]
${CampoProduto}        xpath=//input[@id="inp:cdProduto"]
${CampoDataIni}        xpath=//input[@id="inp:dtCompetencia"]
${BotaoImprimir}       xpath=//button[@data-member="BTN_GERAR_RELATORIO"]

