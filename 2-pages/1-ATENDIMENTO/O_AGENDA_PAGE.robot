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