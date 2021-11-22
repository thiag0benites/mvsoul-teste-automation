##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Recebimento de Solicitações de Serviço
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCodSolicTelaSolic}                        xpath=//input[@id="inp:cdOs"]
${CampoCodSolic}                                 xpath=//input[@class="editor-text mode-search"]                    
${BotaoLovFuncResp}                              xpath=//div[@id="cdResponsavelOs"]/button
${CampoFuncionario}                              xpath=//input[@id="inp:cdResponsavelOs"]
${MensagemToast}                                 xpath=//p[@class="notifications-item-text"]
${BotaoSim}                                      xpath=//li[@class="notification-buttons"]/button[text()="SIM"]  
${CbRecebida}                                    xpath=//button[@data-member="SN_RECEBIDA"]
${BotaoOrdemServico}                             xpath=//button[@id="btnChamar"]
${BotaoNao}                                      xpath=//li[@class="notification-buttons"]/button[text()="Não"]  
${BotaoOk}                                      xpath=//li[@class="notification-buttons"]/button[text()="OK"]  

