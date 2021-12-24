##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Gerenciamento Centralizado de    Leitos
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}    xpath=//input[@id="inp:filtroDataIni"]
${CampoDtFinal}    xpath=//input[@id="inp:fltroDataFim"]
${CampoSituacaoAtual}    xpath=//input[@id="filtroSitAtual_ac"]
