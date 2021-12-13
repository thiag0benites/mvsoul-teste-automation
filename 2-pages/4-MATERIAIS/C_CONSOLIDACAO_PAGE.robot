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
${CampoProduto}        xpath=//input[@id="inp:cdProduto"]
### Botoes ###
${BtnOk}               xpath=//li[@class='notification-buttons']/button
${BtnProduto}          xpath=//div[@data-member="CD_PRODUTO"]/button
${BtnSimPopUp}         xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnExePesq}          xpath=//li[@id="tb-execute"]/a[@data-action="EXECUTE_QUERY"]
### Diversos ###
