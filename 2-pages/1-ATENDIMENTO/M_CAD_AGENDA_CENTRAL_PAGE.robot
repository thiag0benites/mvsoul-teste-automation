##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Agendas
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoCdAgenda}                xpath=//input[@id="inp:cdAgendaCentral"]
${AbaItensAgendamento}          xpath=//a[@id="TAB_CANVAS_TAB_CANVAS_tab1"]
${CampoItemAgendamento}         xpath=//div[@data-member="CD_ITEM_AGENDAMENTO"]/..
${BotaoLovItemAgendamento}      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/button    