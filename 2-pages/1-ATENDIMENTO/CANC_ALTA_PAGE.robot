##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de CANC_ALTA
${campoAtendimento}                             xpath=//input[@id='inp:cdAtendimento']
${btnCancelar}                                  xpath=//button[@id='butDtAltaItem']
${btnConfirmaExclusao}                          xpath=//li[@class='notification-buttons']//button[1]
${btnImprimir}                                  xpath=//button[@data-member='BTN_IMPRIMIR']
${campoSaida}                                   xpath=//div[2]/div[2]/div[2]/div/form/div/fieldset[2]/div/div[1]/input
${buttonSair}                                   xpath=//button[@data-member='BTN_SAIR']
${notification}                                 xpath=//p[@class="notifications-item-text"]