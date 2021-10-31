##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Realizar Pre-agendamento Cirurgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Pre-agendamento cirurgico
${inputDataHr}    id=inp:dtAvisoCirurgia
${inputDataHrSugerida}    id=inp:dtSugerida
${inputTempoPrev}    id=inp:vlTempoPrevisto
${inputDataHrPrevIntern}    id=inp:dtPrevisaoInternacao
${inputTipoInternacao}    xpath=//input[@id='inp:cdTipoInternacao']
${inputCentroCirurgico}    id=inp:cdCenCir
${inputPreSalaCirur}    id=inp:aviCir_cdSalCir
${inputMedicoAssociado}    id=inp:cdPrestadorIndicacao
${inputCirurgia}    id=inp:cdCirurgia          
${inputPotencialCont}    id=inp:cdNaturezaCirurgia
${inputgrupoCirurgia}    id=inp:cdGrupoCirurgia
${inputAtividadeMed}    id=inp:cdAtiMed
${inputCodAtendimentoPreAgCir}    id=inp:cdAtendimento
${divAvisoCirurgia}    xpath=//div[@data-member='CD_AVISO_CIRURGIA']

### Elementos indexados
#[2]
${inputCodPacientePreAg}    xpath=(//input[@id='inp:cdPaciente'])
${inputTipoInternacaoPreAg}    xpath=(//input[@id='inp:cdTipoInternacao'])
${inputConvenioCir}    xpath=(//*[@id='inp:cdConvenio'])
${inputCodPlano}     xpath=(//input[@id='inp:cdConPla'])
${inputPrestCirurgiao}    xpath=(//input[@id="inp:cdPrestador"])