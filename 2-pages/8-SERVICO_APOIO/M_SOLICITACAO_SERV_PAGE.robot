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
${BotaoLovOficina}                       xpath=//div[@id="cdOficina"]/button


${CampoDescricao}                        xpath=//input[@id="inp:solicitacaoOs_dsServico"]
${CampoDtPrev}                           xpath=//input[@id="inp:dtPrevExec"]
${CampoHrPrev}                           xpath=//input[@id="inp:hrPrevExec"]
${BotaoLovEspecialidade}                 xpath=//div[@id="cdEspec"]/button


${BotaoLovOficina}                       xpath=//div[@id="cdOficina"]/button
${BotaoLovSolicitante}                   xpath=//div[@id="cdSolicitante"]/button
${CampoCdServico}                        xpath=//div[@data-member="CD_SERVICO"]/..
${BotaoLov}                              xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button              
${CampoCdFuncionario}                    xpath=//div[@data-member="CD_FUNC"]/.. 
${MensagemSalvarSucesso}                 xpath=//p[@class="notifications-item-text"]   
${MensagemConfirmaOS}                    xpath=//div[@class="notifications-item-body"]/p
${BotaoOk}                               xpath=//li[@class="notification-buttons"]/button 