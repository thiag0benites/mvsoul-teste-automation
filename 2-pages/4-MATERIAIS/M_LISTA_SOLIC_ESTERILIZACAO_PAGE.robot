##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${campoCod}       xpath=//input[@id="inp:cdSolicitacaoCme"]
### Botoes ###
${btnPesquisar}    xpath=//button[@id="btnPesquisar"]
${btnOk}          xpath=//li[@class='notification-buttons']/button
${TituloValidacao}    43025
### Diversos ###
