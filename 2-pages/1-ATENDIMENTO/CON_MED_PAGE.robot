##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de CON_MED
${cpMedico}       xpath=//input[@name="dspNmPrestador"]
${btnExecutar}    xpath=//i[@class="mv-basico-confirmar"]
${cpCodigo}       xpath=//*[@id="grdAtendime"]/div[4]/div[3]/div/div[1]/div[1]/div
