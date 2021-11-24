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
    Send Keys    enter
    Send Keys    enter
    Preencher campo com data e hora    ${inputHoraCentroCir}    %H:%M    0   
    Send Keys    enter
    Send Keys    enter
    Clicar no botao [Salvar]|${preIntMsgEsperada}|
    
    