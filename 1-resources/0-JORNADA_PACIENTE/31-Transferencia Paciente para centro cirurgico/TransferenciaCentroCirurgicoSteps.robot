##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Transferência de Paciente para Centro Cirúrgico e Rpa
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/TransferenciaCentroCirurgicoPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot
Resource    ../../4-MATERIAIS/O_GERIVE_STEPS.robot

*** Variable ***

*** Keywords ***
Pesquisar o paciente pelo codigo de atendimento |${CodAtendimento}|${print}
    Wait Until Element Is Visible    ${inputTransfCodAtend}    120
    Preencher campo    ${inputTransfCodAtend}    ${CodAtendimento}
    Sleep    1
    Clicar no botao [Executar]||

Preencher os campos do registro de transferencias
    Clicar no botao [Reticencias]||
    Clicar no botao [OK Tela]||
    Send Keys    enter
    Sleep    1.5
    Send Keys    enter
    Sleep    1.5
    Send Keys    enter
    Sleep    1.5
    Send Keys    enter
    Sleep    1.5
