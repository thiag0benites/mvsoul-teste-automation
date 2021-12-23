##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoDataEntrega}           xpath=//input[@id="inp:dtEntrega"]
${CampoAtendimento}           xpath=//div[@data-member="CD_ATENDIMENTO"][@data-row="0"]
### Botoes ###
${BtnExecConsulta}            xpath=//button[@id="btnExecutaConsulta"]
${BtnSelecionar}              xpath=//button[@id="btnSelecionar"]
### Diversos ###
