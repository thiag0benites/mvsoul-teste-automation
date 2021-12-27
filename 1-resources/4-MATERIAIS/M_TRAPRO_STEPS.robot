##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passo a Passo para tela de M_TRAPRO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/4-MATERIAIS/M_TRAPRO_PAGE.robot

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

Clicar no Botao |${nomeBtn}|
    IF                               '${nomeBtn}' == 'OK'
    Wait Until Element Is Visible    ${btnOk}                 120
    Sleep                            1
    Click Element                    ${btnOk}
    Sleep                            1
    ELSE IF                          '${nomeBtn}' == 'Sim'
    Wait Until Element Is Visible    ${btnSim}                120
    Sleep                            1
    Click Element                    ${btnSim}
    Sleep                            1
    END                              

Preencher Estoque Origem |${estoqueOrigem}|
    Preencher campo                 ${inputEstoqueOrigem}    ${estoqueOrigem}
    Send Keys                       Enter
    validar Elemento Pelo Titulo    ${estoqueOrigem}         120

Preencher Estoque Destino |${estoqueDestino}|
    Click no Item                                     ${campoEstoqueDestino}
    Preencher campo                                   ${inputEstoqueDestino}    ${estoqueDestino}
    Send Keys                                         Enter
    validar Elemento Pelo Titulo                      ${estoqueDestino}    120

Preencher Produto |${produto}| e Qtd de transferencia |${qtdTransferencia}|
    Click no Item                              ${CampoProduto}
    Preencher campo                            ${inputProduto}    ${produto}    
    Send Keys    enter
    validar Elemento Pelo Titulo               ${produto}    120


    Click no Item                              ${CampoQtdTransferencia}
    Preencher campo                            ${inputQtdTransferencia}    ${qtdTransferencia}
    Send Keys    enter
    validar Elemento Pelo Titulo               ${qtdTransferencia}    120

Concluir e Validar Codigo de Aprovacao |${mensagemSucesso}|
    Click no Item                       ${btnConcluir}
    Wait Until Element Is Visible       ${mensagemAlert}    120
    Element Should Contain              ${mensagemAlert}    ${mensagemSucesso}


Captura codigo|${suite}|${id}|
    Wait Until Element Is Visible    ${btnNao}    120
    Click Element    ${btnNao}
    Sleep    3
    Should Not Be Empty    ${cpCodigo}
    ${codigo}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigo", valor "${codigo}"
