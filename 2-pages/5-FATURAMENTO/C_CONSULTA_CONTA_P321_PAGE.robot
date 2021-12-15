##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de C_CONSULTA_CONTA_P321
${cpProntuario}    xpath=//input[@name="idPaciente"]
${bntPesquisar}    xpath=//*[@id="btAbrePesquisa"]
${cpCodAtendimento}    xpath=//*[@id="inp:cdAtendimento"]
