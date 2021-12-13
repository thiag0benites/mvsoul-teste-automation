##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de  Cancelamento de Pagamentos
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***

${BotaoCheque}                             xpath=//button[@id="rb_TpPagto_Cheque_btn"]
${BotaoBordero}                            xpath=//button[@id="rb_TpPagto_Bordero_btn"]
${BotaoDebito}                             xpath=//button[@id="rb_TpPagto_DebitoCC_btn"]
${BotaoDinheiro}                           xpath=//button[@id="rb_TpPagto_Dinheiro_btn"]
${BotaoTED}                                xpath=//button[@id="rb_TpPagto_Ted_btn"]
${BotaoBaixa}                              xpath=//button[@id="rb_TpPagto_BaixaContabil_btn"]
${BotaoDesconto}                           xpath=//button[@id="rb_TpPagto_DescontoTotal_btn"]
${CampoCheque}                             xpath=//input[@id="inp:cdCheque"]
${CampoBordero}                            xpath=//input[@id="inp:cdBordero"]
${CampoMotivo}                             xpath=//input[@id="inp:cdMotivoCanc"]
${CampoData}                               xpath=//input[@id="inp:dtCancelamento"]
${CampoDataIni}                            xpath=//input[@id="inp:dtInicial"] 
${PrimeiroDaLista}                         xpath=//button[@class="ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default ui-fixed-width mode-edit"][@data-row="1"]
${BotaoPesquisar}                          xpath=//button[@id="btnPesquisar"]
${BotaoConfirmar}                          xpath=//button[@id="btnConfirmar"] 
${MensagemConfirmar}                       xpath=//p[@class="notifications-item-text"]
${BotaoSim}                                xpath=//li[@class="notification-buttons"]/button[text()="Sim"]     
${NotfMensagemSucesso}                     xpath=//li[@class="notification-info"]
${BotaoOk}                                 xpath=//li[@class="notification-buttons"]/button[text()="OK"]

