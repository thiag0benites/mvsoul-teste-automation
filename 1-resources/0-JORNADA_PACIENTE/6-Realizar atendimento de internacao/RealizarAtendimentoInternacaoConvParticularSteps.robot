##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do realizar atendimento de internação para a Jornada do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../../2-pages/0-JORNADA_PACIENTE/RealizarAtendimentoInternacaoConvParticularPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Pesquisar pre-internacao existente pelo codigo do paciente |${intCodPaciente}|${print}
  Wait Until Element Is Visible    ${inputIntCodPaciente}    180
  Preencher campo    ${inputIntCodPaciente}    ${intCodPaciente}
  Click Element    ${inputMedRef}
Preencher campos da tela internacao do paciente |${origem}|,|${servico}|,|${acompanhante}|,|${CodLeito}|,|${CodCobertura}|${print}
  Wait Until Element Is Visible    ${inputOrigem}    30
  Preencher campo    ${inputOrigem}    ${origem}
  Sleep    1
  Preencher campo    ${inputServico}    ${servico}
  Sleep    1
  Seleciona Item Combobox    ${selectAcompanhante}    ${acompanhante}
  Sleep    3
  Preencher campo    ${inputLeito}   ${CodLeito}
  Sleep    1.5
  # ${dataHrPrevAlta}    Captura data atual adicao de horas
  # Preencher campo      ${inputDataHrPrevAlta}    ${dataHrPrevAlta}
  # Sleep    1
  Preencher campo    ${inputCobertura}    ${CodCobertura}
  Sleep    1
Captura codigo do Atendimento Cadastrado|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${inputCodAtendimento}
    ${codAtendimento}    Get Element Attribute    ${inputCodAtendimento}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "cadPacOutputCodAtendimento", valor "${codAtendimento}"
    Clicar no botao [Sair]||
    Sleep    3
   
#Selecionar o check box de um relatório na lista e clicar no botão <Imprimir marcados>