##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da página de Solicitação de Documentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnMotivo}                    xpath=(//button[@class="ui-button ui-widget ui-buttoninput ui-corner-right ui-button-icon"])[1]
${CampoMotivo}                  xpath=//input[@id="#filterLov"]
${BtnFiltro}                    xpath=//button[@id="btfilter"]
${BtnOk}                        xpath=//button[@id="btok"]
${CampoSolicitacao}             xpath=//input[@id="inp:cdPortadorAtendimento"]
${CampoOrigem}                  xpath=//input[@id="inp:cdPortadorSolicitante"]
${CampoAtendimento}             xpath=//input[@id="inp:cdAtendimento"]
${CampoPaciente}                xpath=//input[@id="inp:cdPaciente"]
${BtnSim}                       xpath=//button[@class="btn btn-primary"][1]