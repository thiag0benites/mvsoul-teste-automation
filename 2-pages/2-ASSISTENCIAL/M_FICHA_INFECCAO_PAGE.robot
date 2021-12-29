##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoAtendimento}          xpath=//input[@id="inp:cdAtendimento"]
${CampoCID}                  xpath=//input[@id="inp:regInf_cdCid"]
${CampoDataReg}              xpath=//input[@id="inp:dtRegInf"]



### Botoes ###

${BtnOk}                      xpath=//li[@class='notification-buttons']/button
${BtnSimPopUp}                xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${MensagemRecebida}           xpath=//div[@class="notifications-item-body"]/p
${BtnAdd}                     xpath=//li[@id="tb-record-add"]




${BtnPesquisar}               xpath=//button[@id="CV_TAB_ATENDIME_paciente_btnPesquisar"]
${AbaInfecCol}                xpath=//div[@id="TABPAGES_TABPAGES"]//li[@class="ui-tabs-tab ui-corner-top ui-state-default"]





