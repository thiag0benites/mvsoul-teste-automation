##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Protocolos de Saída de Documentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoSame}                        xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}                     xpath=//button[@id="ok"]
${CampoPrestOri}                    xpath=//input[@id="inp:cdPortador"]
${CampoPrestDes}                    xpath=//input[@id="inp:cdPortadorDestino"]
${CampoTransp}                      xpath=//input[@id="inp:cdTransportador"]
${CampoSolicitante}                 xpath=//input[@id="inp:dsSolicitante"]
${CampoMotivo}                      xpath=//input[@id="inp:dsMotivo"]

${DivMat}                           xpath=//div[@class="slick-cell b1 f1 selected ui-fixed-width"]
${CampoMatr}                        xpath=//input[@class="editor-text mode-edit"]

${BotaoImprimir}                    xpath=//button[@data-member="BTN_IMPR_PROT"]