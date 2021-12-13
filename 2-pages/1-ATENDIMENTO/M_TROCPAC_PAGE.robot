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
${MsgUsuarioConfirm}                                          xpath=//p[@class='notifications-item-text'][text()="Atenção : Ao confirmar este processo todos os registros do Paciente origem serão transferidos para o Paciente destino. Este processo é irreversível."]
${MsgExclusaoPac}                                             xpath=//p[@class='notifications-item-text'][contains(text(),'Deseja excluir o Paciente Original?')]
${MsgConfirmTransf}                                           xpath=//p[@class='notifications-item-text'][contains(text(),'Atenção: Transferência concluída com sucesso !')]