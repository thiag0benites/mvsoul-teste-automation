##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoCod}                     xpath=//input[@id="inp:cdSolicitacaoCme"]

### Botoes ###
${btnPesquisar}                 xpath=//button[@id="btnPesquisar"]
${btnOk}                        xpath=//li[@class='notification-buttons']/button
${CampoColoaborador}            xpath=//div[@class="ui-text ui-state-readonly"][@data-member="CD_USUARIO_ENTRADA"]

### Diversos ###
