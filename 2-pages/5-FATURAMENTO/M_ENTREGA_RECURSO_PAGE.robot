##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de M_ENTREGA_RECURSO.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
       

${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenEntregaRecurso}                  xpath=//section[@id='workspace-menubar']//a[@title='Entrega de Recurso do Recurso']//span

${campoRemessa}                          xpath=//input[@id="inp:cdRemessa"]
${campoRecurso}                          xpath=//input[@id="inp:cdRemessaGlosa"]
${campoDtPrevisao}                       xpath=//input[@id="inp:dtPrevistaParaPgto"]

${btnConfEntregaRec}                     xpath=//button[@id="btnConfirma"]

${MensagemToast}                         xpath=//li[@class="notification-info"]
${btnOk}                                 xpath=//li[@class="notification-buttons"]/button[text()="OK"] 




