##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Protocolos de Entrada de Documentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoSame}      xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}    xpath=//button[@id="ok"]
${CampoPaciente}    xpath=//input[@id="inp:cdPaciente"]
${BotaoExecutar}    xpath=//button[@data-block="PACIENTE"]
