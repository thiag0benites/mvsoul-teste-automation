##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Exames
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoNome}                                 xpath=//input[@id="inp:nmExaLab"]  
${BotaoTipoRes}                              xpath=//input[@id="CV_TAB_DETALHES_tpResultado_ac"]
