##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Realizar Pre-agendamento Cirurgico
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
Resource          ../../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos da Pagina de Pre-agendamento cirurgico
${inputDataHr}    id=inp:dtAvisoCirurgia
${inputDataHrSugerida}    id=inp:dtSugerida
${inputTempoPrev}    id=inp:vlTempoPrevisto
${inputCodPacientePreAg}    xpath=(//input[@id='inp:cdPaciente'])[2]
${inputDataHrPrevIntern}    id=inp:dtPrevisaoInternacao
${inputTipoInternacao}    xpath=//input[@id='inp:cdTipoInternacao']
${inputTipoInternacaoPreAg}    xpath=(//input[@id='inp:cdTipoInternacao'])[2]
${inputSalaCirurgica}    xpath=//div[@id='frames77']/div[@id='aviCir_cdSalCir']/input[@id='inp:aviCir_cdSalCir']
${inputMedicoAssociado}    xpath=//div[@id='frames78']/div[@id='cdPrestadorIndicacao']/input[@id='inp:cdPrestadorIndicacao']
${btnAdicionarCirurgia}    xpath=//button[@data-member='BTN_NOVA_CIRURGIA']
${inputCirurgia}    id=inp:cdCirurgia
${inputConvenioCir}    xpath=(//*[@id='inp:cdConvenio'])[2]
${inputCodPlano}     xpath=(//input[@id='inp:cdConPla'])[2]            
${inputPotencialCont}    id=inp:cdNaturezaCirurgia
${inputgrupoCirurgia}    id=inp:cdGrupoCirurgia
${inputPrestCirurgiao}    xpath=(//input[@id="inp:cdPrestador"])[2]
${inputAtividadeMed}    id=inp:cdAtiMed

