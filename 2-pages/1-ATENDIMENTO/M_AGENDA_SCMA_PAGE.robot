##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da tela Agenda
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BtnPesquisar}                    xpath=//span[@class="ui-icon mv-basico-pesquisar"]  
${CampoItem}                       xpath=//input[@id="inp:cdItemAgendamento"]               