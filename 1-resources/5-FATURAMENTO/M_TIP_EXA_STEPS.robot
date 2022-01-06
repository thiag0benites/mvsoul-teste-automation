##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Definição das keywords personalizadas na suite de teste 
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/5-FATURAMENTO/M_TIP_EXA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tela |${descricao}|,|${codSIASUS}|,|${codEmpresa}|,|${observacao}|
    Preencher Campo    ${inputDescricao}     ${descricao}
    Preencher Campo    ${campoCodSIA}        ${codSIASUS}
    Preencher Campo    ${campoCodEmpresa}    ${codEmpresa}
    Preencher Campo    ${campoObservacao}    ${observacao}

Salvar insercao dos dados
    Click no Item  ${btnSalvar}

Valida mensagem ao salvar |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}