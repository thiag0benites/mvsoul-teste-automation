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
    Click no Item       ${btnExecutar}

Clicar em ok 
    Click no Item       ${btnOk}

Clicar em detalhamento
    Click no Item       ${btnDetalhamento}

Preencher servico e detalhamento do servico |${servico}|,|${detalhamento}|
    Preencher campo    ${campoServico}          ${servico}
    Preencher campo    ${campoDetalhamento}     ${detalhamento}

Pesquisar os campos preenchidos 
    Click no Item       ${btnPesquisar}

Preencher o campo Preencher e valor fixo |${valorPreencher}|,|${valorFixo}|
    Preencher campo    ${campoValorPreencher}          ${valorPreencher}
    Preencher campo    ${campoValorFixo}               ${valorFixo}

Salvar modificacoes
    Click no Item       ${btnSalvar}

Validar mensagem ao salvar |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
