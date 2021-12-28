##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Consulta de Anexo de Pedidos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***

${CampoPedido}                 xpath=//input[@id="inp:cdPedLab"]
${BotaoOk}                    xpath=//button[@class="btn btn-primary"]
${BotaoAcesso}                xpath=//button[@id="btnAnexarDoc"]

${BotaoVisualizar}            xpath=//button[@id="btnVisualizar"]

${BotaoNovo}                  xpath=//button[@id="btnNovo"]
${CampoTipo}                  xpath=//input[@id="inp:cdObjeto"]
${CampoStatus}                xpath=//input[@id="inp:cdStatusArquivoAtendimento"]
${CampoDesc}                  xpath=//input[@id="inp:dsNomeArquivo"]
${BotaoFile}                  xpath=//input[@id="inp:btnAnexar"]

${MensagemToast}            xpath=//div[@class="notifications-item-body"]
