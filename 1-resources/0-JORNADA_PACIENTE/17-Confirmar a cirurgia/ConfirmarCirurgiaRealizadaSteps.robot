##################################################################################################################################
# Autor: Thiago Benites
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/ConfirmarCirurgiaRealizadaPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot

*** Variable ***

*** Keywords ***
Preencher os campos com as datas da cirurgia
    Preencher campo com data e hora    ${inputDtHrEntradaSala}    %d/%m/%Y %H:%M    04:00:00
    Send Keys    enter
    Preencher campo com data e hora    ${inputDtHrIniCirurgia}    %d/%m/%Y %H:%M    04:20:00
    Send Keys    enter
    Send Keys    enter
    Send Keys    enter
    Preencher campo com data e hora    ${inputDtHrSaidaSala}    %d/%m/%Y %H:%M    04:50:00
    Send Keys    enter
    Send Keys    enter
# Informar os campos Ent. realizacao |${dados}[confCirurDataAviso]|, Inicio cirurgia |${dados}[confCirurInicio]|, Fim anest |${dados}[confCirurFimAnest]|, Inicio limpeza |${dados}[confCirurInicioLimpeza]|
# Clicar no botao [Confirmar]|${dados}[confCirurMsgAviso]|
# Valida confirmacao de cirurgia |${dados}[confCirurMsgConfCirurgia]|