##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Movimentação de Aparelhos / Gases
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoPesquisar}                       xpath=//button[@data-member="BTN_ATENDIMENTO"]
${CampoPaciente}                        xpath=//input[@class="editor-text mode-search"]
${BotaoConfirmar}                       xpath=//button[@id="btnConfirmar"]
${ValidAtendimento}                     xpath=//div[@title='1000002160']/..    
${CampoDataInicial}                     xpath=//div[@data-member="DT_LIGA"]/..
${CampoDataEditavel}                    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"]  
${CampoHrInicial}                       xpath=//div[@data-member="HR_LIGA"]/..
${CampoHrEditavel}                      xpath=//input[@class="editor-text mode-edit"]
${CampoDataFinal}                       xpath=//div[@data-member="DT_DESLIGA"]/..
${CampoHrFinal}                         xpath=//div[@data-member="HR_DESLIGA"]/..
${MensagemSalvar}                       xpath=//p[@class="notifications-item-text"]
${BotaoOKSalvar}                        xpath=//button[@class="btn btn-primary"]
${CampoProcedimento}                    xpath=//div[@data-member="DS_PRO_FAT"]/..
${CampoProcedimentoEditavel}            xpath=//input[@class="editor-text mode-search"]
