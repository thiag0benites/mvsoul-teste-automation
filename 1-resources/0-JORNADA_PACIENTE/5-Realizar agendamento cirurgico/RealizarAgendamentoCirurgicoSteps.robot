##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Agendamento cirurgico para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAgendamentoCirurgicoPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Preencher campos da tela de agendamento cirurgico |${centroCirurgico}|,|${salaCirurgica}|,|${cirurgia}|,|${convenio}|,|${plano}|,|${prestadorCirurgiao}|,|${medAssociado}|${print}
    Wait Until Element Is Visible    ${inputCentroCirurgico}    120
    Preencher campo    ${inputCentroCirurgico}    ${centroCirurgico}
    Sleep    1
    Preencher campo    ${inputSalaCirurgica}    ${salaCirurgica}
    Sleep    1
    Preencher campo    ${inputCirurgia}    ${cirurgia}
    Sleep    1
    Preencher campo    ${inputConvenio}    ${convenio}
    Sleep    1
    Preencher campo    ${inputPlano}    ${plano}
    Sleep    1
    Preencher campo    ${inputPrestadorCirurgiao}    ${prestadorCirurgiao}
    Sleep    1
    Preencher campo    ${inputMedAssociado}    ${medAssociado}
    Sleep    1

Preencher os campos e confirmar |${cdPaciente}|,|${CirPacMsgEsperada}|,|${undInternacao}|,|${eqpMedica}|,|${anestesista}|,|${numCID}|${print}
    Wait Until Element Is Visible    ${inputCdPaciente}    30
    Preencher campo    ${inputCdPaciente}    ${cdPaciente}
    Sleep    1
    Clicar no botao [Sim]|${CirPacMsgEsperada}|
    Sleep    1
    Preencher campo    ${inputUnidInternacao}    ${undInternacao}
    Sleep    1
    Preencher campo    ${inputEqpMedica}    ${eqpMedica}
    Sleep    1
    Preencher campo    ${inputAnestesista}    ${anestesista}
    Sleep    1
    Preencher campo    ${inputNumCID}    ${numCID}
    Sleep    1
    Clicar no botao [8-Confirmar]||