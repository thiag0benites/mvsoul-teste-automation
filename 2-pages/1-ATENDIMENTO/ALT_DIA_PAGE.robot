##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da página de Consulta Alta Hospitalar do Dia
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${Calendario}                 xpath=//input[@id="inp:dtAlta"]
${BotaoConfirmar}             xpath=//i[@class="mv-basico-confirmar"]
