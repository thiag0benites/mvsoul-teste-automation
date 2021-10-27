##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Atendimento de Urgência/Emergência
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${AbaAssocAtendimento}                              xpath=//a[@aria-controls="TAB_CANVAS-TB_ATENDIMENTO"]
${ListaConfig}                                      xpath=//div[@id="TB_ATENDIMENTO_snMostraConsulta"]/button
${SelecNao}                                         xpath=//select[@id="inp:snMostraConsulta"]
${BotaoPaciente}                                    xpath=//button[@id="novopac"]
${CampoPaciente}                                    xpath=//input[@id="inp:nmPaciente"]
${BotaoAtender}                                     xpath=//button[@data-block="PACIENTE"]/span[text()="Atender"]
${BotaoLovPrestador}                                xpath=//div[@id="cdPrestador"]/button
${BotaoLovOrigem}                                   xpath=//div[@id="cdOriAte"]/button
${BotaoLovLocalProced}                              xpath=//div[@id="cdLocProced"]/button
${BotaoLovDestino}                                  xpath=//div[@id="cdDesAte"]/button
${BotaoLovTipoPaciente}                             xpath=//div[@id="cdTipoInternacao"]/button
${BotaoLovServico}                                  xpath=//div[@id="cdServico"]/button    
${BotaoLovCID}                                      xpath=//div[@id="cdCid"]/button
${BotaoLovProced}                                   xpath=//div[@id="cdProInt"]/button
${BotaoCarteira}                                    xpath=//button[@id="btn3"]
${CampoNrCarteira}                                  xpath=//input[contains(@class, "mode-edit")]
${CampoValCarteira}                                 xpath=//div[@data-member="DT_VALIDADE"]/..
${CampoValCarteiraEditavel}                         xpath=//input[contains(@aria-labelledby, "Carteira_col4")][2]
${BotaoSelecionar}                                  xpath=//button[@id="btnSelecionar"]
