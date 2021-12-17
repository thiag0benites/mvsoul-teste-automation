##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoData}                   xpath=//input[@id="inp:dtEnvio"]
${CampoHora}                   xpath=//input[@id="inp:hrEnvio"]
${CampoPostoColeta}            xpath=//input[@id="inp:cdPostoColeta"]
${CampoSetorExecutante}        xpath=//input[@id="inp:cdSetExa"]
${CampoObs}                    xpath=//textarea[@id="inp:dsObservacao"]
${CampoAmostra}                xpath=//input[@id="inp:cdAmostra"]







### Botoes ###
${BtnOk}                      xpath=//li[@class='notification-buttons']/button
${BtnFecharRemessa}           xpath=//button[@id="btnFecharAmostra"]
${BtnSimPopUp}                xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${MensagemRecebida}           xpath=//div[@class="notifications-item-body"]/p


