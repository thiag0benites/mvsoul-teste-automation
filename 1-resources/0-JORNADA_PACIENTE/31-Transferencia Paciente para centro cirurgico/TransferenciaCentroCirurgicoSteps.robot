##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Transferência de Paciente para Centro Cirúrgico e Rpa
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/TransferenciaCentroCirurgicoPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Pesquisar o paciente pelo codigo de atendimento |${CodAtendimento}|${print}
    Wait Until Element Is Visible    ${inputTransfCodAtend}    120
    Preencher campo    ${inputTransfCodAtend}    ${CodAtendimento}
    Sleep    1
    Clicar no botao [Executar]||

Preencher os campos do registro de transferencias |${preIntMsgEsperada}|
    Clicar no botao [Reticencias]||
    Clicar no botao [OK Tela]||
    Press Keys    ${divAvisoCir}    ENTER
    Sleep     2
    Press Keys    ${divDtTransp}    ENTER
    Sleep     3
    ${dtHrTransp}    Get Element Attribute    ${inputHrCentroCir}    title
    ${hrTransp}    Get Substring    ${dtHrTransp}    11    16
    ${dtTransp}    Get Current Date    result_format=%Y-%m-%d 
    ${subTime}     Subtract Time From Date    ${dtTransp} ${hrTransp}    01:00:00
    ${hrCentroCir}    Convert Date    ${subTime}    result_format=%H:%M
    Input Text    ${inputHrCentroCir}    ${hrCentroCir}
    Press Keys    ${inputHrCentroCir}    ENTER
    Sleep     2
    Press Keys    ${divDtTransfCC}    ENTER
    Sleep    2
    ${dtHrTransp}    Get Element Attribute    ${divHrTransp}    title
    ${dtTransp}    Get Current Date    result_format=%Y-%m-%d 
    ${addTime}     Add Time To Date    ${dtTransp} ${dtHrTransp}    00:01:00
    ${hrCentroCir}    Convert Date    ${addTime}    result_format=%H:%M
    Input Text    ${inputHrCentroCir}    ${hrCentroCir}
    Sleep    2
    Press Keys    ${inputHrCentroCir}    ENTER
    Sleep    2
    Clicar no botao [Salvar]|${preIntMsgEsperada}|
    Sleep    2



    
    