##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_CANORD.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_CANORD_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher codigo e Validar |${codigo}|
    Preencher campo    ${campoCodigo}    ${codigo}
    Clicar no botao Executar
    Validar Elemento Pelo Titulo    ${codigo}

Preencher motivo do Cancelamento e Validar |${motivoCancelamento}| 
    Click no Item    ${btnCancelar}
    Preencher campo  ${campoMotivoCancelamento}     ${motivoCancelamento} 
    Send keys  enter  
    Validar Elemento Pelo Titulo   ${motivoCancelamento}

Confirmar e validar mensagem |${mensagemSucesso}|
    Click no Item    ${btnConfirmar}
    Click no Item    ${btnSim}
    Wait Until Element Is Visible    ${mensagemApresentada}     120
    Element Should Contain   ${mensagemApresentada}   ${mensagemSucesso}
    Click no Item    ${btnOk}
    Sleep    1

