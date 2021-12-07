##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de O_DIRF
${btnGerarDIRF}                                     xpath=//button[@id='butImportar']
${mensagemNotification}                             xpath=//nav[5]/div/div[2]/ul/li[1]/ul/li[2]/div
${inputAno}                                         xpath=//input[@id='tpAnoGeracao_ac']
${inputCpf}                                         xpath=//input[@id='inp:cpfResponsavelEmpresa']
${inputNome}                                        xpath=//input[@id='inp:nomeResponsavel']
${inputCpf2}                                        xpath=//input[@id='inp:cpfResponsavelPreenchimento']
${inputEmail}                                       xpath=//input[@id='inp:emailResponsavel']
${inputDDD}                                         xpath=//input[@id='inp:dddTelefoneResponsavel']
${inputTelefone}                                    xpath=//input[@id='inp:telefoneResponsavel']