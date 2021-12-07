##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página Consulta de Exames Realizados
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${DataFiltro}                            xpath=//input[@name="dtLaudo"]
${BotaoConsultar}                        xpath=//i[@class="mv-basico-confirmar"]
${BotaoLaudo}                            xpath=//button[@id="btnLaudo"]


