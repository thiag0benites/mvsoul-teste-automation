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

### Diversos ###
${Codigo}                             xpath=//div[@class='ui-text'][@title='${Item}']
${ValidMsg}                           xpath=//p[@class='notifications-item-text']