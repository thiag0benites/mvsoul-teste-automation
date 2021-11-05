##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de EXCL_ATE
${btnExcluirAtendimento}                        xpath=//button[@data-member='BTN_EXCLUI']
${atendimento}                                  xpath=//input[@id='inp:cdAtendimento']
${motivo}                                       xpath=//input[@id='inp:dspDsMotivo']