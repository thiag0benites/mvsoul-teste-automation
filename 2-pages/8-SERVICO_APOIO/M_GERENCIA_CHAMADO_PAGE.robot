##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Gerenciamento de Chamados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoSituacao}                            xpath=//input[@id="tpSituacao_ac"]
${BotaoPesquisar}                           xpath=//button[@id="btnPesquisar"]
${CampoSituacaoAberto}                      xpath=//div[@data-member="TP_SITUACAO"][@title="Aberto"]  
${CampoPrioridade}                          xpath=//div[@data-member="TP_PRIORIDADE"]/..
${CampoPrioridadeEdit}                      xpath=//div[@class="ui-combobox ui-buttoninput ui-widget mode-edit"]/input
${BotaoFinalizar}                           xpath=//button[@id="btnFinalizar"]
${CampoSatisfatorio}                        xpath=//input[@id="snSatisfatorio_ac"]
${CampoFidelidade}                          xpath=//input[@id="snFidelidade_ac"]       
${BotaoFinaliza}                            xpath=//button[@id="btnFinaliza"] 
