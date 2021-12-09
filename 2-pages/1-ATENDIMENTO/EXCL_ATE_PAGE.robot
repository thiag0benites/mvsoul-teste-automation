##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de EXCL_ATE
${btnExcluirAtendimento}                        xpath=//button[@data-member='BTN_EXCLUI']
${atendimento}                                  xpath=//input[@id='inp:cdAtendimento']
${CampoMotivo}                                  xpath=//input[@id='inp:dspDsMotivo']
${btnSimNotifications}                          xpath=//li[@class='notification-buttons']//button[1]
${btnExecute}                                   xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
