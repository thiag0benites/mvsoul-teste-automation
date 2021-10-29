##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo da Realizacao de Pre-agendamento Cirurgico para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarPreAgendamentoCirurgicoPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Preencher campos da tela de pre-agendamento e adicionar a Cirurgia |${dataHr}|,|${dataHrSugerida}|,|${tempoPrev}|,|${dataHrPrevInter}|,|${codAtendPreAgCir}|,|${tipoInternacao}|,|${salaCirurgica}|,|${medicoAssociado}|${print}
    Preencher campo    ${inputDataHr}    ${dataHr}
    Sleep    1
    Preencher campo    ${inputDataHrSugerida}    ${dataHrSugerida}
    Sleep    1
    Preencher campo    ${inputTempoPrev}    ${tempoPrev}
    Sleep    1
    Preencher campo    ${inputDataHrPrevIntern}    ${dataHrPrevInter}
    Sleep    1
    Preencher campo    ${inputCodAtendimentoPreAgCir}    ${codAtendPreAgCir}
    Press Keys    ${inputCodAtendimentoPreAgCir}    ENTER
    Sleep    1
    Preencher campo    ${inputTipoInternacaoPreAg}    ${tipoInternacao}
    Sleep    1
    Preencher campo    ${inputPreSalaCirur}    ${salaCirurgica}
    Sleep    1
    Preencher campo    ${inputMedicoAssociado}    ${medicoAssociado}
    Sleep    1
    Clicar no botao [Adicionar Cirurgia]||

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
    Clicar no botao [Retornar]||

Captura do codigo do aviso de cirurgia|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${divAvisoCirurgia}
    ${codAvisoCir}    Get Element Attribute    ${divAvisoCirurgia}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "preAgCirAvisoCirurgia", valor "${codAvisoCir}"
    Clicar no botao [Sair]||
    Sleep    3

