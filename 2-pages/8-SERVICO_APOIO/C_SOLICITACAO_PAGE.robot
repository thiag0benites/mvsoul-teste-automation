##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Abertura de Chamado
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoLovOrigem}                            xpath=//div[@id="cdOrigem"]/button
${BotaoLovSetor}                             xpath=//div[@id="cdSetor"]/button
${CampoNome}                                 xpath=//input[@id="inp:nmOrigem"]
${CampoIdentidade}                           xpath=//input[@id="inp:nrIdent"]
${BotaoLovTpChamado}                         xpath=//div[@id="cdChamado"]/button
${BotaoLovMeioDoChamado}                     xpath=//div[@id="cdMeio"]/button
${BotaoLovDescNvChamado}                     xpath=//div[@id="cdNivel"]/button
${CampoHrContato}                            xpath=//input[@id="inp:hrRetContato"]
${CampoObservacao}                           xpath=//input[@id="inp:observacao"]
${BotaoConsultaAtend}                        xpath=//button[@id="btnAtendimento"]
${CbPacInternacao}                           xpath=//button[@id="inp:internacao_btn"]
${BotaoConfirmar}                            xpath=//button[@id="btnConfirmar"]  
${CampoDescricao}                            xpath=//textarea[@id="inp:descrChamado"]