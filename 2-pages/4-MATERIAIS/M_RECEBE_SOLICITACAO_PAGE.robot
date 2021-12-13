##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${proxRegistroBtn}    xpath=//li[@id='tb-record-next']//a
${usuarioResponsavel}    xpath=//input[@id='inp:dspNmRecebido']
${minimizeNotificacao}    xpath=//li//a[@class='notification-toggle']
${btnPesquisar}    xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecute}     xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${buttonOk}       xpath=//li[@class='notification-buttons']//button[1]
${inputSolicitacao}    xpath=//input[@id='inp:cdSolsaiPro']
${inputUsuarioResp}    xpath=//input[@id='inp:cdUsuarioEntrega']
${checkboxConfirmar}    xpath=//div[@class='slick-cell b0 f0 selected']//button
${botaoConfirmar}    xpath=//button[@id='btnConfirmar']
${MensagemSalvar}    xpath=//p[@class="notifications-item-text"]
