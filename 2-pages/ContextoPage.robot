##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos do contexto
${classLasDisplay}      class=las-display
${IdIframe}             id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML

### Botões do toolbar

${btnTbSearch}         xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnTbExecute}        xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnTbClear}          xpath=//li[@id='toolbar']//li[@id='tb-clear']//a
${btnTbSave}           xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnTbPrev}           xpath=//li[@id='toolbar']//li[@id='tb-record-prev']//a
${btnTbNext}           xpath=//li[@id='toolbar']//li[@id='tb-record-next']//a
${btnTbAdd}            xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${btnTbRemove}         xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a
${btnTbExit}           xpath=//li[@id='toolbar']//li[@id='tb-exit']//a

### Botões das notificações pop-up

${btnNaoNotifications}  xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Não')]
${btnSimNotifications}  xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']/button[contains(text(),'Sim')]
${btnOKNotifications}   xpath=//ul[@class='dropdown-menu workspace-notifications-menu']/li[@class='notification-buttons']/button[contains(text(),'OK')]

### Botões das telas

${BotaoBuscaTela}       xpath=//*[@class='mv-basico-menu dp32']
${CampoBuscaTela}       xpath=//input[@placeholder="Search"]
${btnOK}                xpath=//button[@id='btok']
${btnSalvar}            xpath=//button[@data-member='BTN_SALVAR']
${btnReticencias}       xpath=//button[@class='ui-button ui-widget ui-corner-right ui-button-icon']//span[@class='ui-button-icon ui-icon mv-basico-reticencias']

### Demais elementos


#${notifPopUp}           xpath=//div[@class='notifications-item']
${notifPopUp}           xpath=//ul[@class='dropdown-menu workspace-notifications-menu']
${MensagemToast}        xpath=//p[@class="notifications-item-text"]
${MensagemToast2}       xpath=//div[@class="notifications-item-body"]/p
${CampoFiltro}          xpath=//input[@name="filterLov"]
${BotaoFiltrar}         xpath=//button[@id="btfilter"]
${MensagemToast2}       xpath=//div[@class="notifications-item-body"]/p


