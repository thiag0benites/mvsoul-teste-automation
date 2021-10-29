##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do gerar aviso da cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/GerarAvisoCirurgiaPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Preencher os campos e adicionar nova cirurgia |${AvDtPrevInter}|,|${AvTempoPrevisto}|,|${AvCodPaciente}|,|${AvCid}|,|${AvUnidInt}|,|${AvCentrCir}|,|${AvSalaCir}|,|${AvEqptMed}|,|${AvMedAssoc}|${print}
    Wait Until Element Is Visible    ${inputAvDtPrevInter}    120
    Preencher campo    ${inputAvDtPrevInter}    ${AvDtPrevInter}
    Sleep    1
    Preencher campo    ${inputAvTempoPrevisto}    ${AvTempoPrevisto}
    Sleep    1
    Preencher campo    ${inputAvCodPaciente}    ${AvCodPaciente}
    Sleep    1
    Preencher campo    ${inputAvCid}    ${AvCid}
    Sleep    1
    Preencher campo    ${inputAvUnidInt}    ${AvUnidInt}
    Sleep    1
    Preencher campo    ${inputAvCentrCir}    ${AvCentrCir}
    Sleep    1
    Preencher campo    ${inputAvSalaCir}    ${AvSalaCir}
    Sleep    1
    Preencher campo    ${inputAvEqptMed}    ${AvEqptMed}
    Sleep    1
    Preencher campo    ${inputAvMedAssoc}    ${AvMedAssoc}
    Sleep    1
    Clicar no botao [Adicionar Cirurgia]||

Preencher os campos do aviso de cirurgia |${cirurgia}|,|${IntCodConvenio}|,|${IntCodPlano}|,|${potencialCont}|,|${grupCirurgia}|,|${prestCirurgiao}|,|${atividadeMed}|,|${AgCirurMsgEsperada}|${print}
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
    Sleep    0.5
    Clicar no botao [Sim]|${AgCirurMsgEsperada}|
   
    
   
    