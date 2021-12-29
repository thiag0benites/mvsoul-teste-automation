##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPac}       xpath=//input[@id="inp:boControle_cdPaciente"]
${CampoSolic}     xpath=//input[@id="inp:boControle_cdSolsaiPro"]
${CampoDataIni}    xpath=//input[@id="inp:dtInicial"]
${CampoDataFim}    xpath=//input[@id="inp:dtFinal"]
${BotaoConsultar}    xpath=//button[@id="btnConsultar"]
${BotaoPreparar}    xpath=//button[@data-member="BTN_PREPARAR"][@data-row="0"]
${BotaoConfirmar}    xpath=//button[@data-member="BTN_CONFIRMAR"][@data-row="0"]
${CheckPendente}    xpath=//button[@id="inp:snPendente_btn"]
${CheckPausado}    xpath=//button[@id="inp:snPausado_btn"]
${CheckConcluido}    xpath=//button[@id="inp:snConcluido_btn"]
${BotaoImprimir}    xpath=//button[@id="btnImprimir"]
${BotaoImprimirFim}    xpath=//button[@data-member="BTN_IMPRIMIR"][@data-block="COMUM"]
