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
    Sleep    0.5
    Preencher campo    ${inputAvTempoPrevisto}    ${AvTempoPrevisto}
    Sleep    0.5
    Preencher campo    ${inputAvCodPaciente}    ${AvCodPaciente}
    Sleep    0.5
    Preencher campo    ${inputAvCid}    ${AvCid}
    Sleep    0.5
    Preencher campo    ${inputAvUnidInt}    ${AvUnidInt}
    Sleep    0.5
    Preencher campo    ${inputAvCentrCir}    ${AvCentrCir}
    Sleep    0.5
    Preencher campo    ${inputAvSalaCir}    ${AvSalaCir}
    Sleep    0.5
    Preencher campo    ${inputAvEqptMed}    ${AvEqptMed}
    Sleep    0.5
    Preencher campo    ${inputAvMedAssoc}    ${AvMedAssoc}
    Sleep    0.5
    Clicar no botao [Adicionar Cirurgia]||

Preencher os campos do aviso de cirurgia |${cirurgia}|,|${IntCodConvenio}|,|${IntCodPlano}|,|${potencialCont}|,|${grupCirurgia}|,|${prestCirurgiao}|,|${atividadeMed}|,|${AgCirurMsgEsperada}|${print}
    Preencher campo    ${inputCirurgia}    ${cirurgia}
    Sleep    0.5
    Preencher campo    ${inputConvenioCir}    ${IntCodConvenio}
    Sleep    0.5
    Preencher campo    ${inputCodPlano}    ${IntCodPlano}
    Sleep    0.5
    Preencher campo    ${inputPotencialCont}    ${potencialCont}
    Sleep    0.5
    Preencher campo    ${inputgrupoCirurgia}     ${grupCirurgia}
    Sleep    0.5
    Preencher campo    ${inputPrestCirurgiao}    ${prestCirurgiao}
    Sleep    0.5
    Preencher campo    ${inputAtividadeMed}     ${atividadeMed}
    Sleep    0.5
    Clicar no botao [Retornar]||
    Sleep    0.5
    Wait Until Element Is Visible    ${notificacaoGravarRegistro}    5
    Sleep    0.5
    ${msgObtida}    Get Text    ${notificacaoGravarRegistro}
    Should Be Equal As Strings    ${AgCirurMsgEsperada}    ${msgObtida}    error=*** Mensagem de alerta não foi apresentada!
    Clicar no botao [Sim]|${AgCirurMsgEsperada}|
    Sleep    1

    
   
    