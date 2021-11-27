##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Espera para Coleta de Materiais
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoFiltro}                              xpath=//button[@id="btnFiltro"]  
${CampoDtInicial}                           xpath=//input[@id="inp:dtPedidoIni"]
${CampoDtFinal}                             xpath=//input[@id="inp:dtPedidoFim"]
${BotaoPesquisar}                           xpath=//button[@id="btnPesquisar"]
