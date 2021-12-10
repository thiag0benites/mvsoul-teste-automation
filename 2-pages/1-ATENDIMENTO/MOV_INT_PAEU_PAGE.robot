##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela transferencia de leito
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variable *** 
${BtnAtendimento}                    xpath=//div[@id="cdAtendimento"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${CampoAtendimento}                  xpath=//input[@id="#filterLov"]
${BtnFiltro}                         xpath=//button[@id="btfilter"]
${BtnOk}                             xpath=//button[@id="btok"]
${BtnOk2}                            xpath=//button[@class="btn btn-primary"]
${BtnLeito}                          xpath=//div[@id="cdLeito"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${BtnMotivo}                         xpath=//div[@id="cdMotivoTransfLeito"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${BtnLimpeza}                        xpath=//div[@id="dspCdTipoLimpeza"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${CampoObs}                          xpath=//textarea[@id="inp:dsMotivo"]
${MsgUsuario}                        xpath=//div[@class="notifications-item-body notification-item-no-title"]