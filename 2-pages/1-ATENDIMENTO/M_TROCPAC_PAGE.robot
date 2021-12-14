##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da página de Triagem de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### CAMPO ###
${CampoPacienteOrigem}                                        xpath=//input[@id='inp:origCdPaciente']
${CampoPacienteDestino}                                       xpath=//input[@id='inp:destCdPaciente']
### BOTAO ###
${BtnContinuar}                                               xpath=//button[@id='btnContinuar']
${BtnSimAlerta}                                               xpath=//button[@class='btn btn-primary'][contains(text(),'Sim')]
${BtnOkAlerta}                                                xpath=//button[@class='btn btn-primary'][contains(text(),'OK')]
### VARIADOS ###
${MsgUsuario}                                                 xpath=//p[@class='notifications-item-text']
