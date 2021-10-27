##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../Config.robot

*** Variable ***
### Elementos da Pagina de CON_ATE
${dataInicio}               xpath=//input[@id='inp:dspDtIniAtend']
${dataFim}                  xpath=//input[@id='inp:dspDtFimAtend']
${inputInternacao}          xpath=//input[@id='snInternado_ac']