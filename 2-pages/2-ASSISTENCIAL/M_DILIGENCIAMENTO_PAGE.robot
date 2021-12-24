##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Acomanhamento de Diligenciamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDtInicial}                        xpath=//input[@id="inp:dtPeriodoInicial"]
${CampoDtFinal}                          xpath=//input[@id="inp:dtPeriodoFinal"]
${BotaoPesquisar}                        xpath=//button[@id="btnPesquisar"]
${BotaoImprimir}                         xpath=//button[@id="btnImprimir"]