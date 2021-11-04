##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RealizarEntradaProdutosNormaisControleLoteValidadeSemOcPage.robot
Library    pabot.PabotLib

*** Variable ***

*** Keywords ***

Informar a opcao "Nota Fiscal" no campo <Tipo de Documento>
    Wait Until Element Is Visible        ${btnTipoDoc}        240
    Click Element            ${btnTipoDoc}
    Sleep    2
    Click Element    ${inputCodJust} 
    Preencher campo    ${inputCodJust}     6
    Sleep    1
    Click Button   ${btnConfirmaJust}
    Sleep    1
    Wait Until Element Is Visible        ${inputTipoDoc}        30
    Sleep    1
    Click Element            ${inputTipoDoc}
    Preencher campo        ${inputTipoDoc}          1
    Press Keys    ${inputTipoDoc}    ENTER
    Sleep    1
Indicar o estoque onde sera efetuada a entrada do produto no campo Estoque |${realEntProdEstoque}|
    Click Element    ${inputEstoque}
    Preencher campo        ${inputEstoque}        ${realEntProdEstoque}
    Press Keys    ${inputEstoque}    ENTER
Informar os campos |${realEntProdNrDoc}|,|${realEntProdSerie}|,|${realEntProdFornecedor}|,|${realEntProdDtEmissao}|,|${realEntProdCFOP}|, |${realEntProdVlTotalNota}|
    Click Element        ${inputNrDoc}
    Preencher campo    ${inputNrDoc}        ${realEntProdNrDoc}
    Press Keys    ${inputNrDoc}    ENTER
    Sleep    1
    Click Element        ${inputNrSerie}
    Preencher campo    ${inputNrSerie}      ${realEntProdSerie}
    Press Keys    ${inputNrSerie}    ENTER
    Sleep    1
    Click Element    ${inputNrFornecedor}
    Preencher campo        ${inputNrFornecedor}        ${realEntProdFornecedor}
    Press Keys    ${inputNrFornecedor}    ENTER    
    Sleep    1
    Click Element        ${inputDtEmissao}
    Preencher campo    ${inputDtEmissao}        ${realEntProdDtEmissao}
    Press Keys        ${inputDtEmissao}        ENTER
    Sleep    1
    Click Element    ${inputCFOP}
    Preencher campo        ${inputCFOP}        ${realEntProdCFOP}
    Press Keys    ${inputCFOP}    ENTER
    Sleep    1
    Click Element    ${inputVlrTotNota}
    Preencher campo    ${inputVlrTotNota}    ${realEntProdVlTotalNota}
    Press Keys    ${inputVlrTotNota}    ENTER
    Sleep    1
    
    
Clicar no botao [Produtos]
    Sleep    1
    Click Element    ${btnProdutos}

Informar os campos Produto |${realEntProdCodProd}|, Quantidade |${realEntProdQtde}|, Valor unitario |${realEntProdVrUnit}|
    Sleep    3
    Click Element    ${inputProdutos}
    Preencher campo    ${inputProdutos}    7907
    Press Keys        ${inputProdutos}        ENTER
    Sleep    1
    Press Keys        ${inputUnidade}        ENTER
    Sleep    1
    Click Element    ${inputQtdEntrada}        
    Preencher campo    ${inputQtdEntrada}    2000
    Press Keys        ${inputQtdEntrada}        ENTER
    Sleep    1
    Click Element   ${inputVlrUnitario}
    Preencher campo        ${inputVlrUnitario}        5
    Press Keys        ${inputVlrUnitario}        ENTER
    
Clicar no botao [Sair]
    Sleep    3
    Click Button    ${btnSairProd}
   
    
Clicar no botao [Duplicata]
    Sleep    3
    Wait Until Element Is Visible    ${btnDuplicata}        320
    Click Button    ${btnDuplicata}
   
Informar os campos Parcela |${realEntProdParcela}|, Data Vencimento |${realEntProdDtVencimento}|, Valor |${realEntProdValor}|
    Sleep    3
    Click Element    ${inputParcela}
    Preencher campo         ${inputParcela}     1
    Press Keys    ${inputParcela}        ENTER
    Sleep    1
    Click Element    ${inputDtVencimento}         
    Preencher campo    ${inputDtVencimento}     29/11/2021
    Press Keys        ${inputDtVencimento}     ENTER
    Sleep    1
    Click Element    ${inputValorParcela}
    Preencher campo    ${inputValorParcela}    1
    Press Keys        ${inputValorParcela}        ENTER

Clicar no botao [Confirma a(s) duplicata(s)]    
    Sleep    3
    Click Button       ${btnConfirmDuplicata}

Clicar no botao [Concluir e Avaliar]
    Sleep    3
    Click Button    ${btnConcluirAvaliar}
