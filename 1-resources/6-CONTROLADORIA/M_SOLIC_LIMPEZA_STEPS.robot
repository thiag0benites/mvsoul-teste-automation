##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_SOLIC_LIMPEZA
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste

Resource    ../../2-pages/6-CONTROLADORIA/M_SOLIC_LIMPEZA_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Configuracoes |${vigencia}|, |${centroRegra}|, |${centroOrigem}|, |${empresaDestino}|, |${centroDestino}|, |${descConta}|

    Preencher campo    ${vigenciaInput}    ${vigencia}
    Send keys          enter

    Preencher campo    ${centroRegraInput}    ${centroRegra}
    Send keys          enter

    Preencher campo    ${centroOrigemInput}    ${centroOrigem}
    Send keys          enter

    Preencher campo    ${empresaDestinoInput}    ${empresaDestino}
    Send keys          enter

    Preencher campo    ${centroDestinoInput}    ${centroDestino}
    Send keys          enter

    Preencher campo    ${descContaInput}    ${descConta}
    Send keys          enter

Validar Campos |${validaVigencia}|, |${centroRegra}|, |${centroOrigem}|, |${empresaDestino}|, |${centroDestino}|, |${descConta}|
    Validar Elemento Pelo Titulo    ${validaVigencia}
    Validar Elemento Pelo Titulo    ${centroRegra}
    Validar Elemento Pelo Titulo    ${centroOrigem}
    Validar Elemento Pelo Titulo    ${empresaDestino}
    Validar Elemento Pelo Titulo    ${centroDestino}
    Validar Elemento Pelo Titulo    ${descConta}



Clicar Botao e Validar Mensagem
    [Arguments]        ${Botao}               ${MensagemRecebida}    ${MensagemEsperada}    
    Click no Item      ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}


Salvar e validar mensagem |${mensagemSucesso}|
    Clicar no botao Salvar do menu
    Click no Item      ${btnSim}
    Wait Until Element Is Visible    ${MensagemToast}    120
    Element Should Contain     ${MensagemToast}    ${mensagemSucesso}

