##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Follow-Up
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovOrdCompra}                                xpath=//div[@id="cdOrdCom"]/button
${BotaoPesquisa}                                    xpath=//button[@id="btnPesquisa"]
${BotaoNovo}                                        xpath=//button[@id="btnNovoFollowup"]
${CampoDtContato}                                   xpath=//input[@id="inp:dtContato"] 
${CampoHrContato}                                   xpath=//input[@id="inp:hrContato"] 
${CampoNomeContato}                                 xpath=//input[@id="inp:nmContato"] 
${CampoFoneContato}                                 xpath=//input[@id="inp:nrFoneContato"] 
${CampoEmailContato}                                xpath=//input[@id="inp:dsEmailContato"] 
${CampoHistFollowUp}                                xpath=//div[@data-member="DS_ANDAMENTO"]/..
${CampoHistFollowUpEdit}                            xpath=//input[@class="editor-text mode-edit"]