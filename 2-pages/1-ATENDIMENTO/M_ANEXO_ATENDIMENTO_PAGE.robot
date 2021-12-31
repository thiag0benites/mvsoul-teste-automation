##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela pre-internacao
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variable ***
${BtnPes}                    xpath=//li[@id="tb-search"]
${MsgValidacao}                    xpath=//p[@class="notifications-item-text"]
${CampoCodigo}                     xpath=//input[@id="inp:cdResLei"][@class="ui-widget-content ui-corner-all"]
${BtnConfirmar}                    xpath=//i[@class="mv-basico-confirmar"]/..
${BtnNotificacao}                  xpath=//li[@id="notifications"]/a
${BtnPaciente}                  xpath=//button[@id="btnDocumentoPaciente"]  
${BtnNovoDoc}                      xpath=//button[@id="btnNovo"]
${BtnTipoDoc}                      xpath=//div[@id="cdObjeto"]/button
${CampoTipoDoc}                    xpath=//div[@id="grdLov"]/div[4]/div[3]/div/div[1]
${BtnTipoStatus}                   xpath=//*[@id="cdStatusArquivoAtendimento"]/button
${CampoTipoStatus}                 xpath=//div[@class="ui-widget-content slick-row odd"]
${BtnOk}                           xpath=//button[@id="btok"]
${CampoDescricao}                  xpath=//input[@id="inp:dsNomeArquivo"]
${BtnAne}                    xpath=//input[@name="file[]"]
${FILE}    C:\\Users\\ACER\\Downloads\\teste.txt