##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de Impressão de Fatura
${classLasDisplay}      class=las-display
${IdIframe}             id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML


${btnAdicionar}           xpath=//a[@title="Adicionar"]
${btnSalvar}              xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnPesquisar}           xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecute}             xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnApagar}              xpath=//li[@id='toolbar']//li[@id="tb-record-remove"]//a
${btnNaoNotifications}    xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Não')]
${btnSimNotifications}    xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Sim')]
${BotaoBuscaTela}         xpath=//*[@class='mv-basico-menu dp32']
${CampoBuscaTela}         xpath=//input[@placeholder="Search"]
${MensagemToast}          xpath=//p[@class='notifications-item-text']
${btnOKNotifications}     xpath=//ul[@class='dropdown-menu workspace-notifications-menu']/li[@class='notification-buttons']/button[contains(text(),'OK')]
${notifPopUp}             xpath=//div[@class='notifications-item']
*** Keywords ***
