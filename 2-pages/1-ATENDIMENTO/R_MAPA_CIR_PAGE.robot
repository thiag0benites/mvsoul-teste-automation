##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Relatório de Mapa Cirúrgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoImprimir}                                   xpath=//button[@data-action="btnGerarRelatorio_click"]
${DtInicial}                                       xpath=//input[@name="dtInicial"]
${TipoAtendimento}                                 xpath=//input[@id="CV_TAB_PADRAO_tpTipo_ac"]