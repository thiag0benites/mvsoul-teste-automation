##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource            ../../Config.robot

*** Variable ***


### Campos ###
${CampoFiltrar}                                  xpath=//input[@id='#filterLov']
${CampoTipoEntrega}                              xpath=//input[@id='inp:cdTipoEntrega']
${CampoObs}                                      xpath=//textarea
${CampoFiltro}                                   xpath=//input[@id='#filterLov']
${CampoAtendimento}                              xpath=//input[@id='inp:cdAtendimento']
${CampoNomeResp}                                 xpath=//input[@id='inp:nmResponsavel']
${CampoCPF}                                      xpath=//input[@id='inp:nrCpf']
${CampoTelContato}                               xpath=//input[@id='inp:nrFone']
${CampoUsuResp}                                  xpath=//input[@id='inp:cdUsuario']
### Botoes ###
${BtnFiltrar}                                    xpath=//button[@id='btfilter']
${BtnPesquisa}                                   Xpath=//*[@id="btnPesquisar"]
${btnVoltar}                                     xpath=//*[@id="btnVoltarObs"]
${BtnOKFiltrar}                                  xpath=//button[@id='btok']
${BtnFiltrar}                                    xpath=//button[@id='btfilter']
${BtnObsPedido}                                  xpath=//button[@id='btnObsPedido']
${btnPesquisar}                                  xpath=//*[@id="btnPesquisar"]
${ChBoxEntregar}                                 xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default ui-fixed-width mode-edit']
${BtnGerarProt}                                  xpath=//button[@id='btnProtocolo']
${BtnTipoParent}                                 xpath=//*[@id="cdTipParen"]/button
${BtnConfirmar}                                  xpath=//button[@id='btnConfirmar']
${BtnOkAlerta}                                   xpath=//button[@class='btn btn-primary']
### Variados ###
${PopUpObsPedido}                                xpath=//span[@class='ui-dialog-title ui-dialog-title-overflow']
${PopUpLista}                                    xpath=//span[normalize-space()='Listagem de Setores']
${IconSetorSolicitante}                          xpath=//*[@id="cdSetor"]/button
${MsgAlerta}                                     xpath=//p[@class='notifications-item-text']




