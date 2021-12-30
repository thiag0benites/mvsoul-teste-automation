##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Anexo de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoPaciente}    xpath=//input[@id="inp:cdPaciente"]
${CampoSame}      xpath=//input[@id="inp:nrSame"]
${BotaoConsultar}    xpath=//button[@id="btnConsultar"]
${BotaoPDF}       xpath=//button[@data-member="BTN_VISUALIZAR_PDF"]
