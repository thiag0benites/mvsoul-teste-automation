##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEscala}                            xpath=//div[@id="cdEscala"]/button
${CampoPeriodo}                              xpath=//input[@id="tpPeriodo_ac"]  
${CampoDtInicial}                            xpath=//input[@id="inp:dtInicio"]
${CampoDtFinal}                              xpath=//input[@id="inp:dtFim"]  
${BotaoGerar}                                xpath=//button[@id="btnGerar"]
${MensagemToast}                             xpath=//p[@class="notifications-item-text"]
${BotaoSimConfirmar}                         xpath=//li[@class="notification-buttons"]/button[text()="Sim"]   
${BotaoOk}                                   xpath=//li[@class="notification-buttons"]/button[text()="OK"] 
