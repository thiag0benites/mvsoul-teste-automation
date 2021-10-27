##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo da Realizacao de Pre-agendamento Cirurgico para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAgendamentoCirurgicoPage.robot

*** Variable ***

*** Keywords ***
Preencher campos da tela de pre-agendamento |${dataHr}|,|${dataHrSugerida}|,|${tempoPrev}|,|${dataHrPrevInter}|,|${codPaciente}|,|${tipoInternacao}|,|${salaCirurgica}|,|${medicoAssociado}|${print}
    Preencher campo    ${inputDataHr}    ${dataHr}
    Sleep    1
    Preencher campo    ${inputDataHrSugerida}    ${dataHrSugerida}
    Sleep    1
    Preencher campo    ${inputTempoPrev}    ${tempoPrev}
    Sleep    1
    Preencher campo    ${inputDataHrPrevIntern}    ${dataHrPrevInter}
    Sleep    1
    Preencher campo    ${inputCodPacientePreAg}    ${codPaciente}
    Sleep    1
    Preencher campo    ${inputTipoInternacaoPreAg}    ${tipoInternacao}
    Sleep    1
    Preencher campo    ${inputSalaCirurgica}    ${salaCirurgica}
    Sleep    1
    Preencher campo    ${inputMedicoAssociado}    ${medicoAssociado}
    Sleep    0.5

Clicar no botao [Adicionar Cirurgia]
    Wait Until Element Is Visible    ${btnAdicionarCirurgia}    30
    Sleep    1
    Click Element    ${btnAdicionarCirurgia}
    Sleep    1

Preencher os campos da cirurgia |${cirurgia}|,|${IntCodConvenio}|,|${IntCodPlano}|,|${potencialCont}|,|${grupCirurgia}|,|${prestCirurgiao}|,|${atividadeMed}|${print}
    Preencher campo    ${inputCirurgia}    ${cirurgia}
    Sleep    1
    Preencher campo    ${inputConvenioCir}    ${IntCodConvenio}
    Sleep    1
    Preencher campo    ${inputCodPlano}    ${IntCodPlano}
    Sleep    1
    Preencher campo    ${inputPotencialCont}    ${potencialCont}
    Sleep    1
    Preencher campo    ${inputgrupoCirurgia}     ${grupCirurgia}
    Sleep    1
    Preencher campo    ${inputPrestCirurgiao}    ${prestCirurgiao}
    Sleep    1
    Preencher campo    ${inputAtividadeMed}     ${atividadeMed}
    Sleep    3