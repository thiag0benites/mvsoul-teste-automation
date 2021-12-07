##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_CANC_REC.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_CANC_REC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher data Final e Validar |${dataFinal}|
    # Clicar no Botao Pesquisar
    Preencher campo    ${campoDtFinal}    ${dataFinal}
    # Clicar no Botao Executar
    Validar Elemento Pelo Titulo    ${dataFinal}

Preencher motivo do Cancelamento e Validar |${motivoCancelamento}| 
    Preencher campo  ${campoMotivoCancelamento}     ${motivoCancelamento} 
    Send keys  enter  
    # Validar Informacao Item     ${campoMotivoProrrogacao}   ${motivoProrrogacao}
    Validar Elemento Pelo Titulo   ${motivoCancelamento}

Confirmar Cancelamento e validar mensagem |${mensagemSucesso}|
    Click no Item  ${checkbox}
    Clicar Botao e Validar Mensagem    ${btnConfirmar}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}
    Sleep    1

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}