##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: M_TISS_CONFIGURACAO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_TISS_CONFIGURACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Executar pesquisa
    Sleep    4
    Click no Item    ${btnExecutar}

Clicar em ok
    Sleep    1
    Click no Item    ${btnOk}

Clicar em detalhamento
    Click no Item    ${btnDetalhamento}

Preencher servico e detalhamento do servico |${servico}|,|${detalhamento}|
    Preencher campo    ${campoServico}    ${servico}
    Press Keys    ${campoServico}    TAB
    Sleep    2

Clicar no proximo registro
    Click no Item    ${btnSeguinte}

Pesquisar os campos preenchidos
    Sleep    1
    Click no Item    ${btnPesquisaServico}

Preencher o campo Preencher e valor fixo |${valorPreencher}|,|${valorFixo}|
    Preencher campo    ${campoValorPreencher}    ${valorPreencher}
    Preencher campo    ${campoValorFixo}    ${valorFixo}

Salvar modificacoes
    Click no Item    ${btnSalvar}

Validar mensagem ao salvar |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}

Minimizar notificacao
    Click no Item    ${minimizeNotification}
