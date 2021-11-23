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
${CampoConta}                   xpath=//div[@id="frames28"]//input[@class="editor-text mode-search"][@id="#frames28"]
${CampoDescricao}               xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input[@class="editor-text mode-search"]
${BtnNatureza}                  xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]//option[@value="C"] 
${BtnGrupoConta}                xpath=//button[@class="ui-button ui-widget ui-corner-right ui-button-icon"]
${CampoGrupoConta}              xpath=//div[@title="1"]
${CheckBoxExpotaAns}            xpath=//button[@data-member="SN_EXPORTA_ANS"]    