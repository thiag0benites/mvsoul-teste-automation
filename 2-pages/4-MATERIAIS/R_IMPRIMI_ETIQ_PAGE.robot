##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de R_IMPRIMI_ETIQ
${ElementoMsgRecebida}              xpath=//li[@class='notification-warning']//div[@class='notifications-item']//p
${botaoImprimirEtiq}                xpath=//button[@data-member='BTN_GERAR_RELATORIO']
${buttonConfirmar}                  xpath=//li[@class='notification-buttons']//button[1]
${campoEtiqueta}                    xpath=//input[@id='CV_TAB_PADRAO_cdEtiqueta_ac']
${campoEstoque}                     xpath=//input[@id='inp:cdEstoque']
${campoQuantidade}                  xpath=//input[@id='inp:dspEstoqueDoLote']