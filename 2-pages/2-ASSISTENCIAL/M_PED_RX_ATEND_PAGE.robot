##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoAtend}                     xpath=//input[@id="inp:cdAtendimento"]
${CampoMed}                       xpath=//input[@id="inp:cdPrestador"]
${CampoSetSol}                    xpath=//input[@id="inp:cdSetor"]
${CampoSetEx}                     xpath=//input[@id="inp:cdSetExa"]

${CampDataPed}                    xpath=//input[@id="inp:dtPedido"]
${CampDataSol}                    xpath=//input[@id="inp:dtSolicitacao"]
${CampDataAut}                    xpath=//input[@id="inp:dtAutorizacao"]
${CampDataVal}                    xpath=//input[@id="inp:dtValidade"]

${DivExame}                       xpath=//div[@class="slick-cell b0 f0 selected ui-fixed-width"]
${CampoExame}                     xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="0"]

${BotaoOk}                        xpath=//li[@class="notification-buttons"]/button[text()="OK"]
