##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Cadastro de Contas a Receber
###################################################################################################################################
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
${VlServicoClick}                             xpath=//div[@data-member="VL_TOTAL"]
${VlServico}                                  xpath=//input[@class="editor-text mode-edit"]
${RegistroSalvo}                              xpath=//p[@class="notifications-item-text"]
${LimpaTela}                                  xpath=//div[@class="notifications-item-body"]/p/br
${LimparSim}                                  xpath=//li[@class="notification-buttons"]/button[text()="Sim"]
${ConfereEstoque}                             xpath=//input[@id="inp:dspDsEstoque"][@title="ALMOXARIFADO"]
    