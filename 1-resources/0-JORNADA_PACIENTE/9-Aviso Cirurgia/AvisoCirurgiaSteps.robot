##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do informar equipamentos no aviso da cirurgia
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AvisoCirurgiaPage.robot
Resource          ../../../2-pages/0-JORNADA_PACIENTE/AssociarExamesImagemAvisoCirurgiaPage.robot

*** Variable ***

*** Keywords ***
Informar o codigo do aviso de cirurgia |${codAgCirurgia}|
    Preencher campo    ${txtCodAvisoCir}    ${codAgCirurgia}
Clicar no botão executar 
Clicar no botão Equipamento
Selecionar um equipamento na lista 
Informar a quantidade solicitada 
Clicar no botão Salvar