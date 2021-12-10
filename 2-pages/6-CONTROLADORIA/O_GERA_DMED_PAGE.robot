##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de O_GERA_DMED
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***
${campoAnoBaseInput}                                    xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[1]/div/div[1]/input
${campoGeraPorInput}                                    xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[1]/div/div[4]/input

${campoAnoBaseClick}                                    xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[1]/div/div[1]
${campoGeraPorClick}                                    xpath=/html/body/div[2]/div/div[2]/div/div/form/div/fieldset/div/fieldset[1]/div/div[4]



${campoEmpresa}                                         xpath=//input[@id="inp:cdMultiEmpresa"]
${campoNome}                                            xpath=//input[@id="inp:nmDmed"]
${campoCpf}                                             xpath=//input[@id="inp:cpfDmed"]
${campoDdd}                                             xpath=//input[@id="inp:dddDmed"]
${campoTelefone}                                        xpath=//input[@id="inp:telefoneDmed"]

${btnExportar}                                          xpath=//button[@id="btnImporta"]


${MensagemToast}                                        xpath=//p[@class="notifications-item-text"] 
${btnOk}                                                xpath=//li[@class="notification-buttons"]/button[text()="OK"] 



