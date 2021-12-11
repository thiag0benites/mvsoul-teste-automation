##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Protocolos de Entrada de Documentos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoSame}                        xpath=//input[@id="inp:cdSame"]
${BotaoAcessar}                     xpath=//button[@id="ok"]


${CampoDataIni}                     xpath=//input[@id="inp:dtInicial"]
${CampoDataFim}                     xpath=//input[@id="inp:dtFinal"]
${CampoTipo}                        xpath=//input[@id="tpAtendimento_ac"]
${CampoMat}                         xpath=//input[@id="matCadastrada_ac"]

${BotaoPesquisar}                   xpath=//button[@id="btnPesquisar"]

${BotaoEntrada}                     xpath=//button[@id="btnImprEtq"]

${BotaoOk}                          xpath=//li[@class="notification-buttons"]/button 
${BotaoSim}                          xpath=//li[@class="notification-buttons"]/button 
${BotaoImprimir}                    xpath=//button[@data-member="BTN_IMPR_PROT"]

${BotaoImprimirFim}                 xpath=//button[@data-member="BTN_IMPRIMIR"]

${CampoMsgSucesso}                  xpath=//div[@class="notifications-item-body"]/p
${CampoMsgImprimir}                 xpath=//p[@class="notifications-item-text"]