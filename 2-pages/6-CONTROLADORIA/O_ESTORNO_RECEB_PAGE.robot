##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

${CampoTipoConta}                          xpath=//*[@id="tpConta_ac"]
${CampoPreencherFiltro}                    xpath=//*[@id="#filterLov"]
${CampoNomeFantasiaCliente}                xpath=//div[@title='AMIL DF']
${CampoDataInicial}                        xpath=//*[@id="inp:dtInicial"]
${CampoDataFinal}                          xpath=//*[@id="inp:dtFinal"]
${CampoDescricaoLancamento}                xpath=//div[@title='ESTORNO RECEBIMENTO']
${CampoDescricaoMotCancelamento}           xpath=//div[@title='BORDERO REAUTILIZAVEL']
${CampoDataEstorno}                        xpath=//*[@id="inp:dtEstorno"]
${CampoNrDocumento}                        xpath=//*[@id="inp:nrDocumento"]
${CampoRecebimento}                        xpath=//div[@data-member='CHECK_MARCAR']

### Botoes ###

${BtnPopupCliente}                         xpath=//*[@id="cdFornecedor"]/button
${BtnFiltrar}                              xpath=//*[@id="btfilter"]
${BtnOk}                                   xpath=//*[@id="btok"]
${BtnPopupTipoLancamento}                  xpath=//*[@id="cdLanConcor"]/button
${BtnPopupMotCancelamento}                 xpath=//*[@id="cdMotivoCanc"]/button
${BtnCheck}                                xpath=//button[@data-rowid='MORPHIS.FOUNDATIONS.be6a8765-3477-43b9-89ea-c69bb33dad7e']
${BtnCheckMarcar}                          xpath=//button[@class='ui-button ui-widget ui-state-default ui-button-icon-only ui-label-position-default mode-edit'][1]
${BtnConfirmar}                            xpath=//*[@id="butConfirmar"]
${BtnOkConfirmacao}                        xpath=//button[@id="frames23"]

### Diversos ###