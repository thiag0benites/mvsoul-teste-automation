##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Relatório de Altas no Período
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${Dt1}                                             xpath=//input[@name="dtInicial"]
${Dt2}                                             xpath=//input[@name="dtFinal"]
${BotaoImprimir}                                   xpath=//button[@data-action="btnGerarRelatorio_click"]