##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoObservacaoDaAlta}                      xpath=//textarea[@id="inp:dsObsAlta"]
${CampoAtendimento}                           xpath=//input[@id="inp:cdAtendimento"]
${CampoMotivaDaAlta}                          xpath=//input[@id="inp:cdMotAlt"]
${CampoTipoDeLimpeza}                         xpath=//input[@id="inp:cdTipoLimpeza"]
${CampoCIDPrincipal}                          xpath=//input[@id="inp:cdCid"]
${CampoFiltro}                                xpath=//div[@id="filterLov"]/input


### Botoes ###
${BtnCID}                                     xpath=//button[@id="btnCidsec"]
${BtnCIDPrincipal}                            xpath=//div[@id="cdCid"]/button
${BtnAlerta}                                  xpath=//li[@class='notification-buttons']//button
${BtnObervacao}                               xpath=//button[@id="btnObservacao"]
${BtnConfirmarAlta}                           xpath=//button[@data-member="BTN_CONFIRMAR"]
${BtnCancelarAlta}                            xpath=//button[@id="butDtAltaItem"]
${BtnSaidaDoRelatorio}                        xpath=//div[@data-member="TP_SAIDA"]//input
${BtnImprimir}                                xpath=//div[@id="CV_PADRAO_PARAMETER"]//button[@data-member="BTN_IMPRIMIR"]
${BtnSair}                                    xpath=//div[@id="CV_PADRAO_PARAMETER"]//button[@data-member="BTN_SAIR"]
${BtnOK}                                      xpath=//button[@class="btn btn-primary"]
${BtnSim}                                     xpath=//button[@class="btn btn-primary"][contains(text(),"Sim")]
${BtnFiltro}                                  xpath=//button[@id="btfilter"]
${BtnOKFiltro}                                xpath=//button[@id="btok"]



### Diversos ###
${Alerta}                                     xpath=//p[@class='notifications-item-text']
${Alerta2}                                    xpath=//p[@class="notifications-item-text"][contains(text(),"A alta")]
${Alerta3}                                    xpath=//p[@class="notifications-item-text"][contains(text(),"Cancelamento")]
   






