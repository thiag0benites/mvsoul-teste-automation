##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do realizar atendimento de internação para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAtendimentoInternacaoConvParticularPage.robot
Resource    ../../4-MATERIAIS/M_BAIXA_SOL_STEPS.robot

*** Variable ***

*** Keywords ***
Pesquisar pre-internacao existente pelo codigo do paciente |${intCodPaciente}|${print}
  Wait Until Element Is Visible    ${inputIntCodPaciente}    180
  Preencher campo    ${inputIntCodPaciente}    ${intCodPaciente}
  Click Element    ${inputMedRef}

Revisar os dados de internacao incluindo leito |${CodLeito}|,|${dataHrPrevAlta}|${print}
  Wait Until Element Is Visible    ${inputLeito}    30
  Preencher campo    ${inputLeito}   ${CodLeito}
  Sleep     2
  Preencher campo    ${inputDataHrPrevAlta}    ${dataHrPrevAlta}
  Sleep     1

#Data previsao hoje + 10
#Campo leito 300
    
Selecionar o check box de um relatório na lista e clicar no botão <Imprimir marcados>