##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela pre-internacao
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variable ***
${BtnPesquisar}                    xpath=//li[@id="tb-search"]/a
${MsgValidacao}                    xpath=//p[@class="notifications-item-text"]
${CampoCodigo}                     xpath=//input[@id="inp:cdResLei"][@class="ui-widget-content ui-corner-all"]
${BtnConfirmar}                    xpath=//i[@class="mv-basico-confirmar"]/..
${BtnNotificacao}                  xpath=//li[@id="notifications"]/a
${BtnDocPaciente}                  xpath=//button[@id="btnDocumentoPaciente"]
${BtnNovoDoc}                      xpath=//button[@id="btnNovo"]
${BtnTipoDoc}                      xpath=//div[@id="cdObjeto"]/button
${CampoTipoDoc}                    xpath=//div[@id="grdLov"]/div[4]/div[3]/div/div[1]
${BtnOk}                           xpath=//button[@id="btok"]
${CampoDescricao}                  xpath=//input[@id="inp:dsNomeArquivo"]
${BtnAnexarDoc}                    xpath=//button[@class="ui-button ui-widget ui-buttoninput ui-button-icon ui-corner-all"]
${FILE}                            C:\Users\ACER\Downloads\TESTE.txt