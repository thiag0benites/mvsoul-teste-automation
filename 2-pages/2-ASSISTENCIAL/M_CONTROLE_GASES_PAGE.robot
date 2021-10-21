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
${ValidAtendimento}                     xpath=//*[@title='1000002160']    
${CampoDataInicial}                     xpath=//div[@data-member="DT_LIGA"]/..
${CampoDataInicialEditavel}             xpath=//input[@id="frames4431634850785510"]    