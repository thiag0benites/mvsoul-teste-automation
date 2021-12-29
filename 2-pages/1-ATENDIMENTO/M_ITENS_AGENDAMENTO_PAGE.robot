##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Elementos e metodos da página de Itens de Agendamento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoDescricao}    xpath=//input[@id="inp:dsItemAgendamento"]
${CampoMnemonico}    xpath=//input[@id="inp:dsMnemonico"]
${CampoExame}     xpath=//input[@id="inp:cdExaRx"]
${CampoTempo}     xpath=//input[@id="inp:hrRealizacao"]
${CampoObs}       xpath=//textarea[@id="inp:dsObservacao"]
${DivRecurso}     xpath=//div[@data-member="CD_RECURSO_CENTRAL"]/..
${CampoRecurso}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="6"]
${AbaPrestador}    xpath=//a[@id="TAB_CANVAS_TAB_CANVAS_tab1"]
${CampoPrestador}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="12"]
${AbaEquipamento}    xpath=//a[@id="TAB_CANVAS_TAB_CANVAS_tab2"]
${CampoEquipamento}    xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="4"][@row="0"]
${AbaItens}       xpath=//a[@id="TAB_CANVAS_TAB_CANVAS_tab3"]
${CampoItens}     xpath=//input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@maxlength="9"][@row="0"]
${MensagemToast}    xpath=//p[@class="notifications-item-text"]
