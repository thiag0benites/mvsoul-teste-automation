##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do realizar atendimento de internação para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAtendimentoInternacaoConvParticularPage.robot

*** Variable ***

*** Keywords ***
Pesquisar pre-internacao existente pelo codigo do paciente |${intCodPaciente}|${print}
    Wait Until Element Is Visible    ${inputIntCodPaciente}    180
    Preencher campo    ${inputIntCodPaciente}    ${intCodPaciente}
    SeleniumLibrary.Click Element    ${inputMedRef}
    
Selecionar o check box de um relatório na lista e clicar no botão <Imprimir marcados>