##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Reserva de Sala Cirúrgica
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLov}                             xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoPrestador}                       xpath=//div[@data-member="CD_PRESTADOR"]/..    
${CampoDtInicial}                       xpath=//input[@id="inp:dtInicial"]
${CampoDtFinal}                         xpath=//input[@id="inp:dtFinal"]
${CampoHrInicial}                       xpath=//input[@id="inp:hrInicial"]
${CampoHrFinal}                         xpath=//input[@id="inp:hrFinal"]
${MensagemSalvar}                       xpath=//p[@class="notifications-item-text"]
${BotaoOKSalvar}                        xpath=//button[@class="btn btn-primary"]
${CampoSala}                            xpath=//div[@data-member="CD_SAL_CIR"]/.. 
${CampoSalaEditavel}                    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]