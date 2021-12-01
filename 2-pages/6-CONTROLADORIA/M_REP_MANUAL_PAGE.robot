##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Botoes ###
${BtnProcurar}                                    xpath=//i[@class='mv-basico-pesquisar']
${BotaoDataCompetencia}                           xpath=//button[@class='ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon ui-state-default']
${BtnExecutarConsulta}                            xpath=//a[@title='Executar Consulta']
${BtnAdicionar(+)}                                xpath=//a[@title='Adicionar']
${BtnCalendDataRepasse}                           xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon ui-state-default']
${BtnCampoCodigo}                                 xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnFiltro}                                      xpath=//*[@id="btfilter"]
${BtnOk}                                          xpath=//*[@id="btok"]
${BtnGrupoRepasse}                                xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnSalvar}                                      xpath=//*[@id="tb-record-save"]
${BtnSetor}                                       xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']
${BtnOkPopUp}                                     xpath=//button[@class='btn btn-primary']
${BtnProcurarLupa}                                xpath=//*[@id="tb-search"]


### Campos ###
${CampoDataCompet}                                xpath=//input[@id='inp:dspDtCompetencia']
${CampoDataRepasse}                               xpath=//*[@id="grdRepassePrestador"]/div[4]/div[3]/div/div[2]/div[2]
${CampoCodigo}                                    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${CampoFiltro}                                    xpath=//*[@id="#filterLov"]
${CampoGrupoRepasse}                              xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${CampoSetor}                                     xpath=//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${CampoEdit}                                      xpath=//input[@class='editor-text mode-edit']
${CampoValorFaturado}                             xpath=//div[@class='slick-cell b7 f7 selected ui-fixed-width']
${CampoValorRepasse}                              xpath=//div[@class='slick-cell b8 f8 selected ui-fixed-width']
${CampoDescricao}                                 xpath=//*[@id="inp:dspDsRepasse"]           



### Diversos ###
${SelecionaFiltro}                                xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[1]/div/div
${ValidMsg}                                       xpath=//p[@class='notifications-item-text']
