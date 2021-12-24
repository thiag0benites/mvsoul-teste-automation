##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoPaciente}    xpath=//input[@id="inp:cdPacienteP"]
${CampoAgenda}    xpath=//input[@id="inp:cdAgendaCentral"]
### Botoes ###
${BtnExePesq}     xpath=//button[@id="btnExecutar"]
${Checkbox}       xpath=//div[@class="ui-checkbox"][@data-row="0"]
${BtnDetalhes}    xpath=//button[@id="btnDetalhe"]
### Diversos ###
