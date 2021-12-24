##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passos da tela M_MOV_CARDAPIO_MULTIPLO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_MOV_CARDAPIO_MULTIPLO_PAGE.robot

*** Keywords ***
Preencher os inputs da tela de Cardapios |${codAtendimento}|,|${tipoDieta}|
    Preencher campo    ${campoCodAtendimento}    ${codAtendimento}
    Preencher campo    ${campoTipoDieta}    ${tipoDieta}

Preencher a tabela de solicitacao de refeicao |${tipoRefeicao}|,|${copa}|,|${setor}|
    Click no Item    ${campoTipoRefeicao}
    Sleep    1
    Preencher campo    ${campoTipoRefeicaoInput}    ${tipoRefeicao}
    Click no Item    ${campoCopa}
    Sleep    1
    Preencher campo    ${campoCopaInput}    ${copa}
    Click no Item    ${campoSetor}
    Sleep    1
    Preencher campo    ${campoSetorInput}    ${setor}

Preencher a tabela do cardapio |${opcao}|,|${prato}|,|${qtdCardapio}|
    Click no Item    ${campoOpcao}
    Sleep    1
    Preencher campo    ${campoOpcaoInput}    ${opcao}
    Sleep    1
    Click no Item    ${campoPrato}
    Sleep    1
    Preencher campo    ${campoPratoInput}    ${prato}
    Sleep    1
    Click no Item    ${campoQtdCardapio}
    Sleep    1
    Preencher campo    ${campoQtdCardapioInput}    ${qtdCardapio}

Salvar cadastro do cardapio
    Click no Item    ${btnSalvar}

Validar cadastro na tela |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
