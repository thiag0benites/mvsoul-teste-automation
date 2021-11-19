##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina C_SOLCOM
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Página de C_SOLCOM
${cpCodigo}         id=#frames22
${btnExecutar}      id=tb-execute
${btnHistorico}     xpath=//*[@id="btnLog"]
${popUpHistorico}   xpath=//*[@id="ui-id-3"]/div
${cpNivAutorizador}     xpath=//*[@title="NIVEL 1 SC "]
${cpUsuario}               xpath=//*[@title="ANDREVASCONCELOS - ANDREVASCONCELOS"]