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
