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
${CampoDescricaoMotCancelamento}           xpath=//div[@title='CONTA INDEVIDA (INUTILIZA)']
${CampoDataEstorno}                        xpath=//*[@id="inp:dtEstorno"]


### Botoes ###
${BtnPopupCliente}                         xpath=//*[@id="cdFornecedor"]/button
${BtnFiltrar}                              xpath=//*[@id="btfilter"]
${BtnOk}                                   xpath=//*[@id="btok"]
${BtnPopupTipoLancamento}                  xpath=//*[@id="cdLanConcor"]/button
${BtnPopupMotCancelamento}                 xpath=//*[@id="cdMotivoCanc"]/button
### Diversos ###
