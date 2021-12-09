##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Triagem de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdPaciente}                            xpath=//input[@id="inp:cdAtendimento"]
${CbPrimeiroAtend}                            xpath=//button[@id="inp:snPrimeiroAtende_btn"]
${CampoQueixaPrincipal}                       xpath=//input[@id="inp:dsQueixaPrincipal"] 
${CampoDiabetes}                              xpath=//input[@id="inp:dsDiabetes"] 
${CampoAsma}                                  xpath=//input[@id="inp:dsAsma"] 
${CampoPAInicial}                             xpath=//input[@id="inp:nrPaIni"] 
${CampoPAFinal}                               xpath=//input[@id="inp:nrPaFim"] 
${CampoPulso}                                 xpath=//input[@id="inp:nrPulso"] 
${CampoTemperatura}                           xpath=//input[@id="inp:nrTemperatura"] 
${CampoQueixaPreenchido}                      xpath=//input[@id="inp:dsQueixaPrincipal"][@title="FEBRE"]  
${BotaoOK}                                    xpath=//li[@class="notification-buttons"]/button[text()="OK"]    