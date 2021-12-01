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
    Sleep     1
    Preencher campo com data e hora    ${divDtTransp}    %d/%m/%Y %H:%M    0
    Press Keys    ${divDtTransp}    ENTER
    Sleep     1
    Preencher campo com data e hora    ${inputHrCentroCir}    23:00    0    
    Press Keys    ${inputHrCentroCir}    ENTER
    Sleep     1
    Preencher campo com data e hora    ${divDtTransfCC}    %d/%m/%Y %H:%M    0
    Press Keys    ${divDtTransfCC}    ENTER
    Sleep     1
    Preencher campo com data e hora    ${inputHrCentroCir}    23:05    0
    Press Keys    ${inputHrCentroCir}    ENTER
    Sleep     1
    
    #Clicar no botao [Salvar]|${preIntMsgEsperada}|
    
    