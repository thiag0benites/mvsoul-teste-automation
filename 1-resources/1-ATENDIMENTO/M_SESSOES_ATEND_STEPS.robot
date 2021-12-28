##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/M_SESSOES_ATEND_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar sessoes
    Click no Item    ${btnPesquisar}

Preencher campo atendimento |${codAtend}|
    Preencher campo    ${campoAtendimento}    ${codAtend}

Executar pesquisa de sessoes
    Click no Item    ${btnExecutar}

Clicar em Ok
    Click no Item    ${botaoOkSessoes}

Preencher os campos da tabela |${data}|,|${hora}|,|${quantidade}|
    Click no Item    ${dataAtend}
    Sleep    1
    Preencher campo    ${dataAtendInput}    ${data}
    Click no Item    ${campoHora}
    Sleep    1
    Preencher campo    ${campoHoraInput}    ${hora}
    Click no Item    ${campoQuantidade}
    Sleep    1
    Preencher campo    ${campoQuantidadeInput}    ${quantidade}

Salvar alteracoes realizadas
    Click no Item    ${btnSalvar}

Validar mensagem ao salvar alteracoes |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
