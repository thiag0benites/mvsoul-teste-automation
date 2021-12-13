##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta APAC
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoProntuario}    xpath=//input[@id="inp:idPaciente"]
${CampoAPAC}      xpath=//input[@id="inp:nrApac"]
${CampoCPF}       xpath=//input[@id="inp:nrCpfPaciente"]
