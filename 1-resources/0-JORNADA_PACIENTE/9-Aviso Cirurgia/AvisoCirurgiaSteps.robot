##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do informar equipamentos no aviso da cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AvisoCirurgiaPage.robot
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AssociarExamesImagemAvisoCirurgiaPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Informar o codigo de aviso de cirurgia |${codAgCirurgia}|
    Wait Until Element Is Visible    ${txtCodAvisoCir}    120
    Preencher campo    ${txtCodAvisoCir}    ${codAgCirurgia}
    Sleep    1
    Clicar no botao [Executar]||
    Sleep    2
    
# Clicar no botão Equipamento
# Selecionar um equipamento na lista 
# Informar a quantidade solicitada 
# Clicar no botão Salvar