##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_ARQUIVO_REMESSA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${campoCodigo}              xpath=//input[@id="inp:cdConPag"]
${btnProrrogar}             xpath=//button[@id="CGM_TAB_1_PAGE_1_butProrrogar"]

${campoNovaDtVencimento}    xpath=//input[@id="inp:dtVencimentoNova"]
${campoMotivo}              xpath=//input[@id="campoMotivo"]

${btnProrrogar2}             xpath=//button[@id="btnProrrogar"]


${MensagemToast}      xpath=//p[@class="notifications-item-text"]
${btnOk}              xpath=//li[@class="notification-buttons"]/button[text()="OK"]
