##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Cancelamento de Solicitacao
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDataIni}    xpath=//input[@id="inp:dtInicial"]
${CampoDataFim}    xpath=//input[@id="inp:dtFinal"]
${BotaoPesquisar}    xpath=//button[@id="btnPesquisar"]
