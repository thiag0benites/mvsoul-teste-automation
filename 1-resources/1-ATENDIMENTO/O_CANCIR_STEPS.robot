##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_CANCIR.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/O_CANCIR_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher codigo e Validar |${codigo}|
    Preencher campo    ${campoCodigo}    ${codigo}
    Send keys  enter
    Validar Elemento Pelo Titulo    ${codigo}

Preencher motivo do Cancelamento e Validar |${motivoCancelamento}| 
    Preencher campo  ${campoMotivoCancelamento}     ${motivoCancelamento} 
    Send keys  enter  
    Validar Elemento Pelo Titulo   ${motivoCancelamento}

Confirmar Cancelamento e validar mensagem |${mensagemSucesso}|
    Clicar Botao e Validar Mensagem    ${btnConfirmar}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}