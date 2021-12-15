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
<<<<<<< HEAD
${btnPesquisar}                 xpath=//button[@id="btnPesquisar"]
${btnOk}                        xpath=//li[@class='notification-buttons']/button
${CampoColoaborador}            xpath=//div[@class="ui-text ui-state-readonly"][@data-member="CD_USUARIO_ENTRADA"]

=======
${btnPesquisar}    xpath=//button[@id="btnPesquisar"]
${btnOk}          xpath=//li[@class='notification-buttons']/button
${TituloValidacao}    43025
>>>>>>> de23791a786ded972150a3c6c57d8ba5a6f29c88
### Diversos ###
