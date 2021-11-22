##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### Campos ###
${CampoFiltroMotCancel}                            xpath=//*[@id="#filterLov"]


### Botoes ###
${BtnDepAntecipado}                                xpath=//*[@id="inp:snCaucao_btn"]
#${BtnRecebimento}                                  xpath=//*[@id="inp:snRecbPart_btn"]
${BtnReceitaDireta}                                xpath=//*[@id="inp:snReceitaDireta_btn"]
${BtnDespesaDireta}                                xpath=//*[@id="inp:snDespesaDireta_btn"]
${BtnPagamento}                                    xpath=//*[@id="inp:snPagamento_btn"]
${BtnDevolucaoDepAnt}                              xpath=//*[@id="inp:snDevolucaoCaucao_btn"]
${BtnExecutarPesquisa}                             xpath=//*[@id="btnPesquisa"]
${BtnImprimir}                                     xpath=//*[@id="btnImprimir"]
${BtnImprimirReciboPag}                            xpath=//button[@data-member='BTN_IMPRIMIR'][@class='ui-widget ui-button ui-center-horizontal ui-center-vertical btn btn-default ui-state-default ui-button-text-only mode-edit']
${BtnLimparPesquisa}                               xpath=//button[@id="btnLimpa"]
${BtnReimpressao}                                  xpath=//*[@id="btnReImprimir"]
${BtnMotivoCancel}                                 xpath=//*[@id="cdMotivoCanc"]/button
${BtnFiltrar}                                      xpath=//*[@id="btfilter"]
${BtnOk}                                           xpath=//*[@id="btok"]
${BtnCancel}                                       xpath=//*[@id="btnCancelar"]
${BtnCadastrarResp}                                xpath=//*[@id="btChamaResp"]



### Diversos ###
${ListaStatus}                                    xpath=//div[@title="Status do Recibo"]
${FiltraStatusEmitido}                            xpath=(//div[@class="slick-cell b3 f3"]//div[@data-member="TP_STATUS"][contains(text(),'Emitido')])[1]
${SairDoSistema}                                  xpath=//*[@id="tb-exit"]/a
${FiltraStatusAguardando}                         xpath=(//div[@class="slick-cell b3 f3"]//div[@data-member="TP_STATUS"][contains(text(),'Aguardando')])[1]
