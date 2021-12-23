##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da tela de Ordens de compra
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***


${inputCodigo}                     xpath=//input[@id="inp:cdSolCom"]
${campoMotivoCancel}               xpath=//div[@id="cdMotCancel"]
${campoMotivoCancelamentoInput}    xpath=//input[@id="inp:cdMotCancel"]
${campoDescricaoNaoAtendimento}    xpath=//textarea[@id="inp:dsMotNAtend"]
${btnConfimar}                     xpath=//button[@id="btnCancelar"]

${btnOk}                           xpath=//button[text()="OK"]
${btnSim}                          xpath=//button[text()="Sim"]

${mensagemApresentada}    xpath=/html/body/nav[5]/div/div[2]/ul/li[1]/ul/li[1]/div/div[2]/p

# ${btnNaoAutorizar}    xpath=//button[@data-name='btnNAutorizar']





