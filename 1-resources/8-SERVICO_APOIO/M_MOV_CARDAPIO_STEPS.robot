##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passos da tela M_MOV_CARDAPIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_MOV_CARDAPIO_PAGE.robot

*** Keywords ***
Preencher os inputs da tela de Cardapios |${tipoRefeicao}|,|${codAtendimento}|,|${tipoDieta}|,|${copa}|,|${setor}|,|${observacao}|
    Preencher campo    ${campoTipoRefeicao}    ${tipoRefeicao}
    Preencher campo    ${campoCodAtendimento}    ${codAtendimento}
    Preencher campo    ${campoTipoDieta}    ${tipoDieta}
    Preencher campo    ${campoCopa}    ${copa}
    Preencher campo    ${campoSetor}    ${setor}
    Preencher campo    ${campoObservacao}    ${observacao}

Preencher a tabela do cardapio |${opcao}|,|${prato}|,|${qtdCardapio}|
    Click no Item    ${campoOpcao}
    Sleep    1
    Preencher campo    ${campoOpcaoInput}    ${opcao}
    Click no Item    ${campoPrato}
    Sleep    1
    Preencher campo    ${campoPratoInput}    ${prato}
    Click no Item    ${campoQtdCardapio}
    Sleep    1
    Preencher campo    ${campoQtdCardapioInput}    ${qtdCardapio}

Salvar cadastro do cardapio
    Click no Item    ${btnSalvar}

Validar cadastro na tela |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
