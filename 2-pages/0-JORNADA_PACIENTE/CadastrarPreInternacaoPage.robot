##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Cadastro de Pre-internacao
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Cadastro de Pre-Internacao
${inputCodPaciente}    xpath=//input[@id='inp:cdPaciente']
${inputOrigem}    xpath=//*[@id="inp:cdOriAte"]
${inputMedico}    xpath=//*[@id="inp:cdPrestador"]
${inputEspecialidade}    xpath=//*[@id="inp:cdEspecialid"]
${inputConvenio}    xpath=//*[@id="inp:cdConvenio"]
${inputPlano}     xpath=//*[@id="inp:cdConPla"]
${inputProcedimento}    xpath=//*[@id="inp:dspCdProInt"]
${inputTipoAcomodacao}    xpath=//*[@id="inp:cdTipAcom"]
${inputTipoInternacao}    xpath=//input[contains(@id, 'inp:cdTipoInternacao')]
${inputServico}    xpath=//*[@id="inp:cdServico"]
${inputCpf}    id=inp:nrCpf
${selectAcompanhante}    id=snAcompanhante_ac
