##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoEquipe}    xpath=//input[@id="inp:cdEquipeMedica"]
${CampoSala}      xpath=//input[@id="inp:cdSalCir"]
${CampoData}      xpath=//input[@id="inp:vdataAgenda"]
${CampoObs}       xpath=//textarea[@id="inp:dsObsAviso"]
### Botoes ###
${BtnObs}         xpath=//button[@id="btnObs"]
${BtnSair}        xpath=//button[@id="btnFechar"]
${BtnSalvar}      xpath=//li[@id="tb-record-save"]
### Diversos ###
${Style}          xpath=//div[@style="background: rgb(255, 0, 0);"]
