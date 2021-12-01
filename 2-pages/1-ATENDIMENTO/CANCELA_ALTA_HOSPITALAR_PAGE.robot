##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de CANCELA_ALTA_HOSPITALAR
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoAtendimentoInput}                                xpath=//input[@id="inp:cdAtendimento"]
${btnCancelarAlta}                                      xpath=//button[@id="butDtAltaItem"]
${btnSim}                                               xpath=//button[normalize-space()='Sim']
${btnImprimir}                                          xpath=//button[@data-member="BTN_IMPRIMIR"]
${saidaRelatorioInput}                                  xpath=/html/body/div[2]/div[2]/div[2]/div/form/div/fieldset[2]/div/div[1]/input
${btnSair}                                              xpath=//button[normalize-space()='Sair']
${MensagemToast}                                        xpath=//p[@class="notifications-item-text"] 
${btnOk}                                                xpath=//li[@class="notification-buttons"]//button[text()="OK"] 





# ${campoEmpresa}                                         xpath=//input[@id="inp:cdMultiEmpresa"]
# ${campoNome}                                            xpath=//input[@id="inp:nmDmed"]
# ${campoCpf}                                             xpath=//input[@id="inp:cpfDmed"]
# ${campoDdd}                                             xpath=//input[@id="inp:dddDmed"]
# ${campoTelefone}                                        xpath=//input[@id="inp:telefoneDmed"]






