##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoDataInicial}    xpath=//input[@id="inp:dtInicial"]
### Botoes ###
${BtnOk}               xpath=//li[@class='notification-buttons']/button

### Diversos ###
