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
${CampoConta}                   xpath=//input[@class="editor-text mode-edit"]
${BtnNatureza}                  xpath=//input[@class="ui-autocomplete-input ui-widget-content ui-buttoninput ui-corner-left"][@id="undefined_ac"]
${BtnGrupoConta}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoGrupoConta}              xpath=//div[@data-member="DS_GRUPO_CONTA"][@title="ATIVO"]
${CheckBoxExpotaAns}            xpath=//div[@class="slick-cell b5 f5 selected ui-fixed-width"] 
${MsgValidada}                  xpath=//p[@class="notifications-item-text"]