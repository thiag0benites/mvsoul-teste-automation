##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Produtos do Estoque
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovEstoque}                                xpath=//div[@id="cdEstoque"]/button
${CampoDtInicial}                                 xpath=//input[@id="inp:dtInicial"]
${BotaoPesquisar}                                 xpath=//button[@id="btnPesquisar"]
${CbTransferir}                                   xpath=//div[@data-member="DSP_SN_TRANSFERE"]/button
${BotaoTransfSolic}                               xpath=//button[@id="btnTransfereSolicitacao"]  
${BotaoLovEstoqueNovo}                            xpath=//div[@id="cdEstoqueNovo"]/button
${BotaoConfirmar}                                 xpath=//button[@id="btnConfirmar"]
${MensagemToast}                                  xpath=//p[@class="notifications-item-text"]  
${BotaoOK}                                        xpath=//li[@class="notification-buttons"]/button[text()="OK"]
${BotaoSim}                                       xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${CampoSaidaRel}                                  xpath=//div[@data-member="TP_SAIDA"]/input    
${BotaoImprimir}                                  xpath=//button[@data-member="BTN_IMPRIMIR"]