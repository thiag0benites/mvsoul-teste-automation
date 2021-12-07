##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Acompanhamento de Solicitacoes de Compras
###################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
 
*** Variable ***

${CampoDataIni}                             xpath=//input[@id="inp:dtInicial"]
${BotaoPesquisar}                           xpath=//button[@id="btnPesquisar"]