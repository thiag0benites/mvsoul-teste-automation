##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Relatório de Pacientes Internados por Tipo de Acomodação
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoImprimir}                                   xpath=//button[@data-action="btnGerarRelatorio_click"]