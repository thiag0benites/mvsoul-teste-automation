##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Itens de Agendamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoAtendimento}                                 xpath=//input[@id="inp:cdAtendimento"]
${CampoOrigem}                                      xpath=//input[@id="inp:cdOriAteNova"]

${BotaoConfirmar}                                   xpath=//button[@id="btnAltera"]
${MensagemToast}                                    xpath=//p[@class="notifications-item-text"]
${BotaoSim}                                         xpath=//button[@class="btn btn-primary"]
${BotaoOk}                                          xpath=//button[@class="btn btn-primary"]