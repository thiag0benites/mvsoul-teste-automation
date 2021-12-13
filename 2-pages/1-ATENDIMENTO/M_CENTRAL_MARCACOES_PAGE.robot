##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${CampoPaciente}                      xpath=//div[@data-member="CD_PACIENTE"]/input
${CampoItem}                          xpath=//div[@data-member="CD_ITEM_AGENDAMENTO"]/..
${CampoEmEdicao}                      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
${CampoPlano}                         xpath=//div[@data-member="CD_CON_PLA"]/input
${CampoDDI}                           xpath=//input[@id="inp:nrDdiTelefone"]
${CampoDDD}                           xpath=//input[@id="inp:nrDddTelefone"]


### Botoes ###
${btnConvenio}                        xpath=//div[@data-member="CD_CONVENIO"]/button
${btnProximo1}                        xpath=//button[@data-member="BTN_PROXIMO1"]
${btnProximo2}                        xpath=//button[@data-member="BTN_PROXIMO2"]
${btnProximo3}                        xpath=//button[@data-member="BTN_PROXIMO3"]
${btnConcluir}                        xpath=//button[@data-member="BTN_CONCLUIR"]
${btnOK}                              xpath=//li[@class="notification-buttons"]/button



### Diversos ###
${CheckBox}                          xpath=//button[@id="inp:chkReservado_btn"]


${Alerta}                            xpath=//p[@class="notifications-item-text"]




