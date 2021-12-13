##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_ARQUIVO_REMESSA.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_ARQUIVO_REMESSA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher codigo e Validar |${codigo}|
    Clicar no Botao Pesquisar
    Preencher campo    ${campoCodigo}    ${codigo}
    Clicar no Botao Executar
    Validar Elemento Pelo Titulo    ${codigo}

Processar e validar mensagem |${mensagemSucesso}|
    Click no Item    ${checkboxRemessa}
    Clicar Botao e Validar Mensagem    ${btnProcessar}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}