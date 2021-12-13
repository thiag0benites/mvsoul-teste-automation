##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_ARQUIVO_REMESSA
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
${campoCodigo}    xpath=//input[@id="inp:cdExpArquivoRemessa"]
${btnProcessar}    xpath=//button[@id="btnGerarArquivo"]
${checkboxRemessa}    xpath=//div[@class="slick-cell b4 f4 ui-fixed-width"]//div[@data-row="2"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
${btnOk}          xpath=//li[@class="notification-buttons"]/button[text()="OK"]
