##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passo a Passo para tela de M_TRAPRO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_TRAPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao[Concluir]
    Wait Until Element Is Visible    ${btnConcluir}    120
    Sleep    1
    Click Element    ${btnConcluir}
    Sleep    6

Preencher Estoque Origem |${estoque}|, Estoque Destino |${estoqueDestino}|, Nr Documento|${nrDoc}|
    Wait Until Element Is Visible    ${inputEstoqueOrigem}    180
    Preencher campo    ${inputEstoqueOrigem}    ${estoque}
    Sleep    3
    Preencher campo    ${inputEstoqueDestino}    ${estoqueDestino}
    Sleep    3
    Press Keys    ${inputEstoqueDestino}    ENTER
    Preencher campo    ${cpNrDoc}    ${nrDoc}
    Sleep    3

Preencher Produto |${produto}|, Qtd de transferencia |${qtdTransferencia}|
    Wait Until Element Is Visible    ${CampoProduto}    120
    Click Element    ${CampoProduto}
    Preencher campo    ${inputProduto}    ${produto}
    Sleep    3
    Click Element    ${cpQtd}
    Preencher campo    ${inpQtd}    ${qtdTransferencia}

Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${btnNao}    120
    Click Element    ${btnNao}
    Sleep    3
    Should Not Be Empty    ${cpCodigo}
    ${codigo}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigo", valor "${codigo}"
