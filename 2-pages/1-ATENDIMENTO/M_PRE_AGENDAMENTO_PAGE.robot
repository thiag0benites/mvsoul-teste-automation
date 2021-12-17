##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela Pre agendamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${Data1}                    xpath=//input[@id="inp:dtAvisoCirurgia"]
${Data2}                    xpath=//input[@id="inp:dtSugerida"]
${CampoTempo}               xpath=//input[@id="inp:vlTempoPrevisto"]
${Data3}                    xpath=//input[@id="inp:dtPrevisaoInternacao"]
${CampoPaciente}            xpath=//input[@id="inp:cdPaciente"]
${BtnCentroCirurgico}       xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[9]
${BtnSalaCirurgica}         xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[10]
${CampoFiltro}              xpath=//input[@id="#filterLov"]
${BtnFiltro}                xpath=//button[@id="btfilter"]
${BtnOk}                    xpath=//button[@id="btok"]
${BtnOk2}                   xpath=//button[@class="btn btn-primary"]
#${BtnNotificacao}           xpath=//a[@class="notification-toggle"]
${BtnAcomodacao}            xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[5]
${BtnMedico}                xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[11]
${BtnAdicionar}             xpath=//button[@id="item400"]
${BtnSubgrupo}              xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[12]
${BtnGrupo}                 xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[13]  
${BtnCirurgia}              xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[14] 
${BtnConvenio}              xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[16] 
${BtnPlano}                 xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[18] 
${BtnPotencial}             xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[20]   
${ComboboxLateralidade}     xpath=//input[@id="dsLateralidade_ac"]    
${BtnPrestador}             xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[22] 
${BtnAtividade}             xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[23] 
${BtnRetornar}              xpath=//button[@id="btnRetornar"]  
${MsgUsuario}               xpath=//input[@id="inp:cdAvisoCirurgia"]