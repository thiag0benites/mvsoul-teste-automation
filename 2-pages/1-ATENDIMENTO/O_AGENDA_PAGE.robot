##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da tela de Agendamento Cirurgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${cpCenCirugico}        xpath=//input[@name="cdCenCir"]
${cpSala}           xpath=//input[@name="cdSalCir"]    
${cpDtCirugia}      xpath=//input[@name="dtAvisoCirurgia"]    
${cpCodCirurgia}    xpath=//input[@name="cdCirurgia"]   
${elemRetic}            xpath=//span[@class="ui-button-icon ui-icon mv-basico-reticencias"]
${cirurgia}             xpath=//*[@title="ABCESSO PERINEAL TRATAMENTO CIRURGICO"]
${btnOk}            xpath=//button[@id="btok"]
${cpEspecialidade}      xpath=//*[@id="inp:cdEspecialidCirurgia"]
${cpConvenio}       xpath=//input[@name="cdConvenio"]    
${cpPlano}          xpath=//input[@name="cdConPla"]    
${cpCirurgiao}      xpath=//input[@name="cdPrestadorCirurgiao"]    
${cpMedAssociado}           xpath=//input[@name="cdPrestadorIndicacao"]    
${btnAgendar}           xpath=//*[@id="btnAgendar"]
${cpCodPac}             xpath=//*[@id="inp:aSimples_cdPaciente"]
${cpTpAcom}             xpath=//*[@id="inp:cdTpAcom"]
${cpUnInt}              xpath=//*[@id="inp:cdUnidIntAge"]
${cpEqMed}              xpath=//*[@id="inp:aSimples_cdEquipeMedica"]
${cpAnestesista}        xpath=//*[@id="inp:cdPrestadorAnestesista"]
${cpCid}                xpath=//*[@id="inp:cdCid"]
${btnConfirmar}         xpath=//*[@id="aSimples_btnConfirmar"]
${msgRecebida}          xpath=//*[@id="notifications"]/ul/li[2]/div
${btnNao}               xpath=(//*[@class="btn btn-primary"])[2]