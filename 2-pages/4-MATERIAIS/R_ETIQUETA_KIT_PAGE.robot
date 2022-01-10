##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de R_ETIQUETA_KIT
${ElementoMsgRecebida}                       xpath=//li[@class='notification-warning']//div[@class='notifications-item']//p
${botaoImprimirEtiqueta}                     xpath=//button[@data-member='BTN_GERAR_RELATORIO']