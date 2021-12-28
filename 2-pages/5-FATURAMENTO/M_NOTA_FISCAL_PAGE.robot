##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${Notificacao}                    xpath=//li[@id="notifications"]  
${CampoAtendimento}               xpath=//input[@id="inp:cdAtendimento"] 
${BtnRecebe}                      xpath=//button[@id="btnImprimirTodo"]      
${BtnImprimir}                    xpath=//span[@class="ui-icon mv-basico-imprimir"]
${BtnNovaNota}                    xpath=//button[@id="btnNovaNota"]
${BtnNotaFiscal}                  xpath=//button[@id="btnImprimirNotaFiscal"]
${CampoEmail}                     xpath=//input[@id="inp:email"]
${BtnAtualizar}                   xpath=//button[@id="btnAtualizar"]
${BtnSair}                        xpath=//button[@id="btnSair"]
${MsgUsuario}                     xpath=(//div[@class="notifications-item-body notification-item-no-title"])[2]
${BtnSim}                         xpath=//button[@class="btn btn-primary"][1]
${BtnSair2}                       xpath=//button[@data-member="BTN_SAIR"]
${BtnCancelar}                    xpath=(//button[@id="btnCancelar"])[2]
${BtnMotivo}                      xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[27]
${LinhaMotivo}                    xpath=//div[@title="TESTE CONSULTORIA"]
${BtnOk}                          xpath=//button[@id="btok"]
${MsgUsuario2}                    xpath=//p[@class="notifications-item-text"]
${DataCancel}                     xpath=//input[@id="inp:dtCancelamento"]

#//button[@class="btn btn-primary"]