##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoPac}                                 xpath=//input[@id="inp:boControle_cdPaciente"]
${CampoSolic}                               xpath=//input[@id="inp:boControle_cdSolsaiPro"]
${CampoDataIni}                             xpath=//input[@id="inp:dtInicial"]
${CampoDataFim}                             xpath=//input[@id="inp:dtFinal"]
${BotaoConsultar}                           xpath=//button[@id="btnConsultar"]

${BotaoImprimir}                            xpath=//button[@id="btnImprimir"]
${BotaoImprimirFim}                         xpath=//button[@data-member="BTN_IMPRIMIR"][@data-block="COMUM"]
