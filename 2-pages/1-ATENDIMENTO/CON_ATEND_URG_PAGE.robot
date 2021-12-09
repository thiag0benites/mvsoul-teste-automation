##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Consulta de pacientes atendidos na Urgência/Emergência (Std)
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${Calendario}                                     xpath=//input[@id="inp:dtAtendimento"]
${BotaoPesquisar}                                 xpath=//button[@id="btnPesquisar"]