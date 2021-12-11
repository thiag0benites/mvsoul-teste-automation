##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Protocolos de Cadastro de Prontuário
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoSame}                        xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}                     xpath=//button[@id="ok"]
${CampoPaciente}                    xpath=//input[@id="inp:cdPaciente"]
${CampoArmario}                     xpath=//input[@id="inp:cdArmarioSame"]
${CampoLinha}                       xpath=//input[@id="inp:dsLinha"]
${CampoObs}                         xpath=//textarea[@id="inp:dsObservacao"]


