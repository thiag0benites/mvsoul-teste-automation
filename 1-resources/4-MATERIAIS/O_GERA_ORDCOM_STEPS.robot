##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de O_GERA_ORDCOM.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_GERA_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Solicitacao de Compra |${solicitacaoDeCompra}| e Consultar
    Preencher campo    ${campoSolicitacaoDeCompra}    ${solicitacaoDeCompra}
    Click no Item    ${btnConsultar}

Validar Consulta |${validaConsulta}|
    Validar Elemento Pelo Titulo    ${validaConsulta}

Clicar Botao e Validar Mensagem
    [Arguments]    ${Botao}    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${Botao}
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}

Clicar Botao |Solicitacao de Compra| e Validar mensagem |${mensagemSucesso}|
    Clicar Botao e Validar Mensagem    ${btnSugestaoSistema}    ${MensagemToast}    ${mensagemSucesso}
    Click no Item    ${btnOk}