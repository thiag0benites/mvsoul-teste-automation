##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoPedido}                  xpath=//input[@id="inp:pedido"]

### Botoes ###
${BtnOk}                      xpath=//li[@class='notification-buttons']/button
${BtnExecPesq}                      xpath=//li[@id="tb-execute"]/a


### Diversos ###
${CheckBox}                   xpath=//div[@class="ui-checkbox"]/button
