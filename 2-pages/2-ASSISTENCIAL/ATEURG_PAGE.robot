##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Atendimento de Urgência/Emergência
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoBuscaTela}                                   xpath=//*[@class='mv-basico-menu dp32']
${CampoBuscaTela}                                   xpath=//input[@placeholder="Search"]
${AbaAssocAtendimento}                              xpath=//a[@aria-controls="TAB_CANVAS-TB_ATENDIMENTO"]
${CampoConfig}                                      xpath=//div[@id="TB_ATENDIMENTO_snMostraConsulta"]/input
${BotaoPaciente}                                    xpath=//button[@id="novopac"]
${CampoPaciente}                                    xpath=//input[@id="inp:nmPaciente"]
${BotaoAtender}                                     xpath=//button[@data-block="PACIENTE"]/span[text()="Atender"]
${BotaoSimValidAtend}                               xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${BotaoOKConfAtend}                                 xpath=//button[@class="btn btn-primary"][text()="OK"]
${BotaoLovPrestador}                                xpath=//div[@id="cdPrestador"]/button
${BotaoLovOrigem}                                   xpath=//div[@id="cdOriAte"]/button
${BotaoLovLocalProced}                              xpath=//div[@id="cdLocProced"]/button
${BotaoLovDestino}                                  xpath=//div[@id="cdDesAte"]/button
${BotaoLovTipoPaciente}                             xpath=//div[@id="cdTipoInternacao"]/button
${BotaoLovServico}                                  xpath=//div[@id="cdServico"]/button   
${CampoCID}                                         xpath=//input[@id="inp:cdCid"] 
${BotaoLovCID}                                      xpath=//div[@id="cdCid"]/button
${BotaoLovProced}                                   xpath=//div[@id="cdProInt"]/button
${BotaoCarteira}                                    xpath=//button[@id="btn3"]
${CampoNrCarteira}                                  xpath=//input[contains(@class, "mode-edit")]
${CampoValCarteira}                                 xpath=//div[@data-member="DT_VALIDADE"]/..
${CampoValCarteiraEditavel}                         xpath=//input[contains(@aria-labelledby, "Carteira_col4")][2]
${BotaoSelecionar}                                  xpath=//button[@id="btnSelecionar"]
${MensagemSucesso}                                  xpath=//p[@class="notifications-item-text"]
