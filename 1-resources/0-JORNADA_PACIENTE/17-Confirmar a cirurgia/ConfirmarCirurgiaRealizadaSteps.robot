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
Preencher os campos com as datas da cirurgia e transferir paciente para Centro Cirúrgico |${tipoAnestesiaMsgEsperada}|,|${tipoAnestesia}|,|${transfPacCentroCirurgicoRpa}|
    Wait Until Element Is Visible    ${divDtHrEntradaSala}    120
    Sleep    3
    ${entReal}    Get Element Attribute    ${divHrCentroCir}    title
    #${entReal}    Set Variable    15:30
    ${dtEntReal}    Get Current Date    result_format=%Y-%m-%d 
    ${addTime}     Add Time To Date    ${dtEntReal} ${entReal}    00:01:00
    ${hrEntReal}    Convert Date    ${addTime}    result_format=%d/%m/%Y %H:%M
    Preencher campo    ${inputDtHrEntradaSala}    ${hrEntReal}
    Press Keys    ${divDtHrEntradaSala}    ENTER
    Sleep     1
    Press Keys    ${divDtHrIniAnestesia}    ENTER
    Sleep     1
    ${dtHrAnest}    Get Element Attribute    ${inputDtHhIniAnestesia}    title
    ${dtAnest}    Get Current Date    result_format=%Y-%m-%d     
    ${hrAnest}    Get Substring    ${dtHrAnest}    11    16
    ${addTime}     Add Time To Date    ${dtAnest} ${hrAnest}    00:01:00
    ${dtHrIniAnest}    Convert Date    ${addTime}    result_format=%d/%m/%Y %H:%M
    Preencher campo    ${inputDtHrIniCirurgia}    ${dtHrIniAnest}
    Press Keys    ${divDtHrIniCirurgia}    ENTER
    Sleep     1
    Press Keys    ${divDtHrFimCirurgia}    ENTER
    Sleep     1
    Press Keys    ${divDtHrFimAnestesia}    ENTER
    Sleep     1
    ${dtHrFimAnest}    Get Element Attribute    ${inputDtHhFimAnestesia}    title
    ${dtFimAnest}    Get Current Date    result_format=%Y-%m-%d     
    ${hrFimAnest}    Get Substring    ${dtHrFimAnest}    11    16
    ${addTime}     Add Time To Date    ${dtFimAnest} ${hrFimAnest}    00:02:00
    ${dtHrFimAnest}    Convert Date    ${addTime}    result_format=%d/%m/%Y %H:%M
    Preencher campo    ${inputDtHrSaidaSala}    ${dtHrFimAnest}    
    Press Keys    ${divDtHrSaidaSala}    ENTER 
    Sleep    1
    ${dtHrFimSala}    Get Element Attribute    ${inputDtHrSaidaSala}    title 
    Press Keys    ${divDtHrIniLimpeza}    ENTER
    Sleep    1
    Press Keys    ${divDtHrFimLimpeza}    ENTER
    Sleep    1
    Clicar no botao [Tipo de Anestesia]||
    Clicar no botao [Reticencias]||
    Sleep    1
    Preencher campo    ${inputFiltroTela}    ${tipoAnestesia}
    Sleep    1
    Clicar no botao [Filtrar]||
    Sleep    2
    Clicar no botao [OK Tela]||
    Sleep    2
    Clicar no botao [Retornar]||
    Clicar no botao [Sim]|${tipoAnestesiaMsgEsperada}|
    Sleep    2
    Clicar no botao [Confirmar]||
    #IF
    Clicar no botao [Sim]||
    #End
    Sleep    3
    Clicar no botao [OK]||
    Sleep    3
    Clicar no botao [Sair]||
    Sleep    3
    Clicar no botao [Sair]||
    Sleep    3
    
#Retornar a tela "Transferência de Paciente para Centro Cirúrgico" |${transfPacCentroCirurgicoRpa}|

    Seleciona Item Combobox    ${selectLocalTranfCir}    ${transfPacCentroCirurgicoRpa}
    Clicar no botao [Reticencias]||
    Sleep    1
    Preencher campo    ${inputFiltroTela}    APARTAMENTO - UNID 01
    Sleep    1
    Clicar no botao [Filtrar]||
    Sleep    2
    Clicar no botao [OK Tela]||
    Sleep    2
    Press Keys    ${divRecPosAnestesia}    ENTER 
    Sleep    2
    Press Keys    ${divDtRecPosAnestEnt}    ENTER
    Sleep    2
    ${dtTime}    Get Current Date    result_format=%Y-%m-%d
    ${dtHrFimAnest}    Get Substring    ${dtHrFimSala}    11    16
    ${addTime}     Add Time To Date    ${dtTime} ${dtHrFimAnest}    00:01:00
    ${hrRecPosAnest}    Convert Date    ${addTime}    result_format=%H:%M
    Input Text    ${inputHrRecPosAnest}    ${hrRecPosAnest}
    Sleep    2
    Press Keys    ${inputHrRecPosAnest}    ENTER
    Sleep    2
    Press Keys    ${divDtRecPosAnestSaida}    ENTER
    Sleep    2
    ${getHrPos}    Get Element Attribute    ${divHrRecPosAnest}    title
    ${getDtPos}    Get Current Date    result_format=%Y-%m-%d 
    ${addTime}     Add Time To Date    ${getDtPos} ${getHrPos}    00:01:00
    ${inputHrPosAnest}    Convert Date    ${addTime}    result_format=%H:%M
    Input Text    ${inputHrRecPosAnest}    ${inputHrPosAnest}
    Sleep    2
    Press Keys    ${inputHrRecPosAnest}    ENTER
    Sleep    2


   




    





