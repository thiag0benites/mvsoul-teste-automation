##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da página Transferência de Paciente para Centro Cirúrgico e Rpa
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Consulta de Cadastro de Paciente
${inputTransfCodAtend}    id=inp:cdAtendimento
${selectGridAvCir}  xpath=//div[@data-member='CD_AVISO_CIRURGIA']
${divAvisoCir}    xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']
${divDtTransp}    xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']
${inputDtTransp}    xpath=(//input[@class='ui-widget-content ui-buttoninput ui-corner-left'])[6]
${inputHrCentroCir}    xpath=//input[@class='editor-text mode-edit']
${divDtTransfCC}    xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']
${divHrTransp}    xpath=//div[@data-member='HR_CHAMADA_TRANSF_AUX']
${divHrCentroCir}    xpath=//div[@data-member='HR_CENTRO_CIRURGICO_AUX']

