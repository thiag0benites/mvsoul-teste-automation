##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoPedido}    xpath=//input[@id="inp:pedido"]
${CampoNomePaciente}    xpath=//input[@id="inp:nmPaciente"]
### Botoes ###
${BtnOk}          xpath=//li[@class='notification-buttons']/button
${BtnExecPesq}    xpath=//li[@id="tb-execute"]/a
${BtnRevisar}     xpath=//button[@id="btnRevisar"]
${BtnUltimosResultados}    xpath=//button[@id="btnResult"]
${BtnVisualizar}    xpath=//button[@id="btnVisualizar"]
${BtnRetornar}    xpath=//button[@id="btnRetornaLaudo"]
### Diversos ###
${SelecionaExame}    xpath=//div[@data-member="NM_EXAME"][@data-row="0"]
