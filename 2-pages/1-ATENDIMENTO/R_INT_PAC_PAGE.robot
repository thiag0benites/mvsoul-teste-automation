##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Relatório de Pacientes Internados em Ordem Alfabética
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoImprimir}                                   xpath=//button[@data-action="btnGerarRelatorio_click"]
${DtInicial}                                       xpath=//input[@name="dtInicial"]