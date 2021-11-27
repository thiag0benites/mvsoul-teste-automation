##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Cadastro de Ordem de Compras
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoEstoque}                               xpath=//input[@id="inp:cdEstoque"]
${CampoFornecedor}                            xpath=//input[@id="inp:cdFornecedor"]
${CampoPerEntregaIni}                         xpath=//input[@id="inp:dtPrevEntregaIntervalo"]
${CampoPerEntregaFin}                         xpath=//input[@id="inp:dtPrevEntrega"]
${CampoCondic}                                xpath=//input[@id="inp:cdCondicaoPagamento"]
${CheckServico}                               xpath=//button[@id="rb_TpOrdCom_Servico_btn"]
${CampoVLTotal}                               xpath=//input[@id="inp:vlTotal"]
${CampoDesconto}                              xpath=//input[@id="inp:vlPercDesconto"]
${CampoICMS}                                  xpath=//input[@id="inp:vlPercIcms"]
${BotaoServico}                               xpath=//button[@id="btnProduto"]
${Servico}                                    xpath=//input[@row="0"]
${VlServico}                                  xpath=//input[@class="editor-text mode-edit"]
${BotaoLovClasse}                             xpath=//div[@id="cdClasse"]/button
${BotaoLovSubclasse}                          xpath=//div[@id="cdSubCla"]/button
${CampoRegistroAnvisa}                        xpath=//input[@id="snRegistroAnvisa_ac"]
${BotaoLovAtividade}                          xpath=//div[@id="cdTipAtiv"]/button
${MensagemToast}                              xpath=//p[@class="notifications-item-text"]
${BotaoNao}                                   xpath=//li[@class="notification-buttons"]/button[text()="Não"]         
${BotaoSim}                                   xpath=//li[@class="notification-buttons"]/button[text()="Sim"]          