##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da página de Pedidos de exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}    xpath=//input[@id="inp:cdAtendimento"] 
${BtnMedico}      xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[2]
${FiltroMedico}    xpath=//input[@id="#filterLov"]
${BtnFiltro}      xpath=//button[@id="btfilter"]
${BtnOk}          xpath=//button[@id="btok"]
${DataColeta}     xpath=//input[@id="inp:dtColeta"]
${BtnSetor}       xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[5]
${BtnSetorSol}    xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[3]
${BtnTecnico}     xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[6]
${LinhaExame}     xpath=//div[@id="CV_TAB_EXAMES_grdItpedRx1"]/div[4]/div[3]/div/div/div[1]
${BtnExame}       xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[26]
${LinhaDescricao}    xpath=//div[@title="RX ABDOME AGUDO"]
${BtnOk2}         xpath=//button[@class="btn btn-primary"]  
${BtnSim}         xpath=//button[@class="btn btn-primary"][1]
${CampoPedido}    xpath=//input[@id="inp:cdPedRx"]
${CampoAtendimento2}   xpath=(//input[@id="inp:cdAtendimento"])[2]
