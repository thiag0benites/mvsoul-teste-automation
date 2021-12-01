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
#Preencher campos da tela de pre-agendamento e adicionar a Cirurgia |${dataHr}|,|${dataHrSugerida}|,|${tempoPrev}|,|${dataHrPrevInter}|,|${codPacPreAgCir}|,|${tipoInternacao}|,|${centroCirurgico}|,|${salaCirurgica}|${print}
Preencher campos da tela de pre-agendamento e adicionar a Cirurgia |${tempoPrev}|,|${codPacPreAgCir}|,|${tipoInternacao}|,|${centroCirurgico}|,|${salaCirurgica}|${print}
    Preencher campo com data e hora    ${inputDataHr}    %d/%m/%Y %H:%M    0
    Preencher campo com data e hora    ${inputDataHrSugerida}   %d/%m/%Y %H:%M    04:00:00
    Preencher campo com data e hora    ${inputDataHrPrevIntern}    %d/%m/%Y %H:%M    0
    Preencher campo    ${inputTempoPrev}    ${tempoPrev}
    Sleep    1
    Preencher campo    ${inputCodPacientePreAgCir}    ${codPacPreAgCir}
    Press Keys    ${inputCodPacientePreAgCir}    ENTER
    Sleep    1
    Preencher campo    ${inputTipoInternacaoPreAg}    ${tipoInternacao}
    Sleep    1
    Preencher campo    ${inputCentroCirurgico}    ${centroCirurgico}
    Sleep    1
    Preencher campo    ${inputPreSalaCirur}    ${salaCirurgica}
    Sleep    1
    Clicar no botao [Adicionar Cirurgia]||

Preencher os campos da cirurgia |${grupCirurgia}|,|${cirurgia}|,|${IntCodConvenio}|,|${IntCodPlano}|,|${potencialCont}|,|${prestCirurgiao}|,|${atividadeMed}|${print}
    Preencher campo    ${inputgrupoCirurgia}     ${grupCirurgia}
    Sleep    1
    Preencher campo    ${inputCirurgia}    ${cirurgia}
    Sleep    1
    Preencher campo    ${inputConvenioCir}    ${IntCodConvenio}
    Sleep    1
    Preencher campo    ${inputCodPlano}    ${IntCodPlano}
    Sleep    1
    Preencher campo    ${inputPotencialCont}    ${potencialCont}
    Sleep    1
    Preencher campo    ${inputPrestCirurgiao}    ${prestCirurgiao}
    Sleep    1
    Preencher campo    ${inputAtividadeMed}     ${atividadeMed}
    Press Keys    ${inputAtividadeMed}    ENTER
    Sleep    1.5
    Clicar no botao [Retornar]||
    Sleep    1

Captura da data e hora sugerida do pre-agendamento|${suite}|${dados}[id]|
    Wait Until Element Is Visible    ${inputDataHrSugerida}    30
    Should Not Be Empty   ${inputDataHrSugerida}
    ${DataHrSugerida}    Get Element Attribute    ${inputDataHrSugerida}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "preAgDtHrSugerida", valor "${DataHrSugerida}"
    Sleep    2

Captura do codigo do aviso de cirurgia|${suite}|${id}|
    Wait Until Element Is Visible    ${inputAvisoCirurgia}    30
    Should Not Be Empty   ${inputAvisoCirurgia}
    ${codAvisoCir}    Get Element Attribute    ${inputAvisoCirurgia}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "preAgCirAvisoCirurgia", valor "${codAvisoCir}"
    Sleep    2

Preencher os campos e reservar sala de cirurgia |${CirurMsgEsperada}|
    Wait Until Element Is Visible    ${inputDtPrevInter}    30
    Click Element    ${inputDtPrevInter}  
    Send Keys    enter  
    Sleep    1
    Clicar no botao [1-Agendar]||
    Sleep    2
    Wait Until Element Is Visible    ${notifMsgSucesso}    30
    ${msgObtida}    Get Text    ${notifMsgSucesso}
    #Should Be Equal As Strings    ${CirurMsgEsperada}    ${msgObtida}
    #Log To Console    *** Mensagem de alerta não foi apresentada!
    Clicar no botao [OK]||
    Clicar no botao [Sair Tela]||
    Clicar no botao [Sair]||

