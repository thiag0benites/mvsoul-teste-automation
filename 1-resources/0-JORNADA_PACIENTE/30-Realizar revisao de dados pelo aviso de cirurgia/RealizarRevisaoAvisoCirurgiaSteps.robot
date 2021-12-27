##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Realizar revisao de dados pelo aviso de cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarRevisaoAvisoCirurgiaPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Pesquisar paciente pelo aviso de cirurgia |${AvisoCirurgia}|${print}
    Wait Until Element Is Visible    ${divCodAvisoCirurgia}    120
    Press Keys   ${divCodAvisoCirurgia}   ENTER
    Preencher campo    ${inputCodAvisoCirurgia}    ${AvisoCirurgia}
    Sleep    1
    Clicar no botao [Executar]||