##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela saída de documentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoMenu}                    xpath=//input[@id="inp:cdSame"]
${BtnAcessar}                   xpath=//button[@id="ok"]
${CampoPortador}                xpath=//input[@id="inp:cdPortadorDestino"]
${CampoTransportador}           xpath=//input[@id="inp:cdTransportador"]
${CampoSolicitante}             xpath=//input[@id="inp:dsSolicitante"]
${CampoMotivo}                  xpath=//input[@id="inp:dsMotivo"]
${CampoAtendimento}             xpath=//input[@id="inp:cdAtendimento"]