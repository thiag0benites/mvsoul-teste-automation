##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos da tela de Plano de conta Contábil.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
${botaoSim}                         xpath=//li[@class='notification-buttons']//button[1]
${botaoImprimir}                    xpath=//div[@data-widget='panel']//button[@data-member='BTN_GERAR_RELATORIO']