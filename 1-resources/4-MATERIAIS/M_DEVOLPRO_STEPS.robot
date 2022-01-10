##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/M_DEVOLPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Marcar o check box <2- Setor> 
    Click no Item  ${buttonSetor}

Preencher os campos |${SolicitaEstoque}|,|${MotivoDevolucao}|,|${Setor}|
    Preencher Campo        ${campoSolicitaEstoque}       ${SolicitaEstoque} 
    Preencher Campo        ${campoMotivoDev}             ${MotivoDevolucao} 
    Preencher Campo        ${campoSetor}                 ${Setor} 

Clique no botao Sim da notificacao da tela de devolucao do produto
    Click no Item   ${campoProduto}
    Sleep    1
    Click no Item  ${buttonSim}

Preencher produto solicitado |${Produto}|,|${Lote}|,|${Quantidade}|,|${Data}|
    Click no Item   ${campoProduto}
    Sleep    1
    Preencher Campo        ${campoProdutoInput}       ${Produto} 

    Click no Item   ${campoLote}
    Sleep    1
    Preencher Campo        ${campoLoteInput}            ${Lote} 
    Press Keys      ${campoLoteInput}       TAB

    Sleep    1
    Preencher Campo        ${campoDataInput}            ${Data} 

    Click no Item   ${campoQuantidade}
    Sleep    1
    Preencher Campo        ${campoQuantidadeInput}       ${Quantidade} 

Clique em salvar 
    Click no Item  ${btnSalvar}

Validar cadastro realizado |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
