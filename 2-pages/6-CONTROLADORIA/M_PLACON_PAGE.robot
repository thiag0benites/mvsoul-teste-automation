##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela conta de movimentacao
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${BtnLimpar}                    xpath=//a[@title="Limpar"]
${BtnCodigo}                    xpath=//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"]//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${CampoBuscaEmpresa}            xpath=//div[@title="5"]     
${BtnOk}                        xpath=//button[@id="btok"]
${BtnNotificacao}               xpath=//a[@class="notification-toggle"]
${CampoConta}                   xpath=//input[@class="editor-text mode-search"]
#${CampoDescricao}               xpath=//input[@class="editor-text mode-search"]/.
${BtnNatureza}                  xpath=(//input[@class="ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left"])[1]
${BtnGrupoConta}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoGrupoConta}              xpath=(//div[@class="ui-text"][@data-member="CD_GRUPO_CONTA"])[2]
${CheckBoxExpotaAns}            xpath=//button[@data-member="SN_EXPORTA_ANS"]    