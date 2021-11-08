##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
### Campos ###
${CampoCodigo}                        xpath=//input[@id='inp:cdCaixa']
${CampoPesquisa}                      xpath=//*[@id="#filterLov"]
${CampoDescricao}                     xpath=//*[@id="inp:dsCaixa"]
${CampoTextoJustif}                   xpath=//*[@id="inp:dsJustificativa"]
${CampoMotivoCancel}                  xpath=//input[@id='inp:cdMotivoCanc']
${CampoDocumento}                     xpath=//*[@id="grdMovCaixa"]/div[4]/div[3]/div/div[1]/div[1]/div

### Botoes ###
${BtnListaCampoCodigo}                xpath=//*[@id="cdCaixa"]/button
${BtnExecutarConsulta}                xpath=//*[@id="tb-execute"]/a/i
${CheckBoxReabrir}                    xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit']
${BtnFiltrar}                         xpath=//*[@id="btfilter"]
${BtnOk}                              xpath=//*[@id="btok"]
${BtnOkRegRelatorio}                  xpath=//*[@id="btnOk"]
${SelecionaLote}                      xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit']
${BtnReabrirLote}                     xpath=//button[@id='btnReabrirLote']
${BtnOkMensagem}                      xpath=//*[@id="frames17"]
${BtnMoticoCancel}                    xpath=//*[@id="cdMotivoCanc"]/button
${ChkBoxSelectDoc}                    xpath=//*[@id="grdMovCaixa"]/div[4]/div[3]/div/div[1]/div[1]/div/button
${BtnCancelarMovim}                   xpath=//button[@id='btnCancelar']


### Diversos ###
${Codigo}                             xpath=//div[@class='ui-text'][@title='${Item}']
${ValidMsg}                           xpath=//p[@class='notifications-item-text']
${LocatorSemResultado}                xpath=//p[@class='notifications-item-text'][contains(text(),'Nenhum item foi marcado!')]
${LocatorComResultado}                xpath=//p[@class='notifications-item-text'][contains(text(),'Cancelamento efetuado com sucesso.')]