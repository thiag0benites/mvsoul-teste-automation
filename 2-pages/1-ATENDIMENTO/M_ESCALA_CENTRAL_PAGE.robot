##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da tela 
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${campoPrestador}                   xpath=//input[@id="inp:cdPrestador"]
${campoHoraInicial}                 xpath=//input[@id="inp:hrInicio"]
${campoHoraFinal}                   xpath=//input[@id="inp:hrFim"]
${ComboBoxDiaSemana}                xpath=//input[@id="tpDiaSemana_ac"]
${ComboboxDinamica}                 xpath=//div[@id="snAgendaDinamica"]/input
${CampoSetor}                       xpath=//input[@id="inp:cdSetor"]






### Botoes ###
${BtnSimPopUp}                          xpath=//li[@class="notification-buttons"]/button[contains(text(),"Sim")]
${BtnOk}                                xpath=//li[@class='notification-buttons']/button
${BtnSalvar}                            xpath=//li[@id='tb-record-save']
${BtnComboBoxDinamica}                  xapth=//div[@id="snAgendaDinamica"]





### Diversos ###
${Alerta}                        xpath=//div[@class="notifications-item-body notification-item-no-title"]/p      
$                