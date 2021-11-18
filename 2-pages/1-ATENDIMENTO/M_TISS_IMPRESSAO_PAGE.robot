##################################################################################################################################
# Autor: leticia Andrade
# Decrição: Elementos e metodos da página 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${codAtendimento}                   xpath=//input[@id='inp:cdAtendimento']
${btnRelGTISS}                      xpath=//button[@id='btnGuiaTiss']
${selectSaidaRelatorio}             xpath=//input[@id='tpSaida_ac']
${btnImprimir}                      xpath=//button[@id='btnSolicita']