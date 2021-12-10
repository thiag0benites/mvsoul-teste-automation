##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Solicitação de Serviços
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDataDesabilitado}                 xpath=//div[@id="dtPedido"]/input[@disabled="disabled"]
${CampoHoraDesabilitado}                 xpath=//input[@id="inp:hrPedido"][@disabled="disabled"]
${CampoSolicitantePreenchido}            xpath=//input[@id="inp:dspNmSolicitante"][@title="ANDREVASCONCELOS"]   
${BotaoLovTpOS}                          xpath=//div[@id="cdTipoOs"]/button
${BotaoLovBemPatrimonial}                xpath=//div[@id="cdBem"]/button
${CampoDescricao}                        xpath=//input[@id="inp:dsServico"]
${BotaoLovOficina}                       xpath=//div[@id="cdOficina"]/button
${CampoRamal}                            xpath=//input[@id="inp:dsRamal"]
${CampoPrioridade}                       xpath=//input[@id="dsPrioridade_ac"] 
${MensagemToast}                         xpath=//p[@class="notifications-item-text"]
${BotaoOk}                               xpath=//li[@class="notification-buttons"]/button 

