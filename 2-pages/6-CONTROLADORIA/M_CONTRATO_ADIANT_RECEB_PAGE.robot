##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela Adiantamento do tipo Financeiro
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${BtnEmpresa}                    xpath=//div[@id="cdMultiEmpresa"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${Filtro}                        xpath=//input[@id="#filterLov"]
${BtnFiltro}                     xpath=//button[@id="btfilter"]
${BtnOk}                         xpath=//button[@id="btok"]
${ComboxAdiantamento}            xpath=//input[@id="tpContratoAdiant_ac"]
${ComboboxContratante}           xpath=//input[@id="tpContratante_ac"]
${BtnContratante}                xpath=//div[@id="cdContratante"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${DescricaoContrato}             xpath=//input[@id="inp:dsContratoAdiant"]
${NumeroContrato}                xpath=//input[@id="inp:nrContratoAdiant"]
${DiaVencimento}                 xpath=//input[@id="inp:nrDiaVencto"]
${BtnPgto}                       xpath=//div[@id="TAB_DADOS_CONTRATO_cdFormaPagtoAdiant"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${ValorContrato}                 xpath=//input[@id="inp:vlContratoAdiant"]
${DataContrato}                  xpath=//input[@id="inp:dtContratoAdiant"]
${MsgValidacao}                  xpath=//p[@class="notifications-item-text"]
${BtnGerar}                      xpath=//button[@id="btnConRec"]
${BtnContaContabil}              xpath=//div[@id="cdReduzido"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${BtnDoc}                        xpath=//div[@id="cdTipDoc"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${BtnMoeda}                      xpath=//div[@id="cdMoeda"]//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]
${LinhaSetor}                    xpath=//div[@id="grdRatConrec"]/div[4]/div[3]/div/div/div[1]
${BtnCompatilha}                 xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${FiltroSetor}                   xpath=//div[@title="AMBULATORIO HOBRA"]
${LinhaConta}                    xpath=//div[@id="grdRatConrec"]/div[4]/div[3]/div/div/div[5]
${LinhaRateio}                   xpath=//div[@id="grdRatConrec"]/div[4]/div[3]/div/div/div[7]
${ValorRateio}                   xpath=//input[@class="editor-text mode-edit"]
${BtnConcluir}                   xpath=//button[@id="btnVoltarCr"]
${MsgUsuario}                    xpath=//div[@class="notifications-item-body"]
${BtnOk2}                        xpath=//button[@class="btn btn-primary"]
