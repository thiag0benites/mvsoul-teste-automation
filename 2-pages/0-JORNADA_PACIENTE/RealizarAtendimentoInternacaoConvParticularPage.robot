##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Realizar Atendimento Internação Convênio Particular
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina
${inputIntCodPaciente}    id=inp:atendime_cdPaciente
${inputMedRef}    id=inp:nmPrestadorReferencia

${inputOrigem}    xpath=//*[@id="inp:cdOriAte"]
${inputServico}    xpath=//*[@id="inp:cdServico"]
${selectAcompanhante}    id=snAcompanhante_ac
${inputLeito}     xpath=//input[@id='inp:cdLeito']
${inputDataHrPrevAlta}    id=inp:dtPrevistaAlta
${inputCodAtendimento}    id=inp:cdAtendimento
