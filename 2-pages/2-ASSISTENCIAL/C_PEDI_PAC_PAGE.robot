##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Consulta de Pedidos de Exame por Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoConsultar}                        xpath=//span[@class="menu-node-text"]
${CampoDados}                            xpath=//input[@name="cdPaciente"]
${BotaoExecutar}                         xpath=//i[@class="mv-basico-confirmar"]


