##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de M_CONVERTE_RPS.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***


${campoAtendimento}         xpath=//input[@id="inp:cdAtendimento"]
${btnRecebe}                xpath=//button[@id="btnImprimirTodo"]
${btnImprimeNF}             xpath=//button[@id="btImprimeNf"]
${btnImprimirNotaFiscal}    xpath=//button[@id="btnImprimirNotaFiscal"]
${btnAtualizar}             xpath=//button[@id="btnAtualizar"]
${btnSair}                  xpath=//button[@id="btnSair"]
${btnOk}                    xpath=//li[@class="notification-buttons"]/button[text()="OK"] 

${mensagemApresentada}    xpath=//p[@class="notifications-item-text"]





