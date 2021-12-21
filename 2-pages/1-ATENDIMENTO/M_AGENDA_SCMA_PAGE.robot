##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela Agenda
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPesquisar}    xpath=//span[@class="ui-icon mv-basico-pesquisar"]
${CampoItem}      xpath=//input[@id="inp:cdItemAgendamento"]
${LinhaAgenda}    xpath=(//div[@title="FERNANDA VALDEVINO"])[2]
${DiaEscolhido}    xpath=//input[@title="20"]
${CampoPaciente}    xpath=//input[@id="inp:parametrosFiltros_cdPaciente"]
${BtnAgendamento}    xpath=(//button[@role="checkbox"])[11]
${BtnS}           xpath=//button[@id="btnSalvar"]
${MsgValidada}    xpath=//div[@id="itemAgendamento"]
${MsgExclusao}    xpath=//div[@class="notifications-item-body"]
${BtnLimpar}      xpath=//button[@id="btnExcluir"]
${BtnSim}         xpath=//button[@class="btn btn-primary"][2]
${BtnSim2}        xpath=//button[@class="btn btn-primary"][1]
