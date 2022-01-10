##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Consulta APAC
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoImprimir}                                   xpath=//button[@data-action="btnGerarRelatorio_click"]
${CRemessa}                                        xpath=//input[@id="inp:cdRemessa"]
${TipoAtendimento}                                 xpath=//input[@id="CV_TAB_PADRAO_tpTipo_ac"]
