##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RealizarEntradaProdutosNormaisControleLoteValidadeSemOcPage.robot

*** Variable ***

*** Keywords ***

Informar a opcao "Nota Fiscal" no campo <Tipo de Documento>
    Wait Until Element Is Visible        ${btnTipoDoc}        120
    Click Element            ${btnTipoDoc}
    Sleep    1
    Wait Until Element Is Visible        ${btnVoltarJust}        15
    Click Button           ${btnVoltarJust}
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

Informar os campos Produto |${realEntProdCodProd}|, Quantidade |${realEntProdQtde}|, Valor unitario |${realEntProdVrUnit}|

Informar os campos Parcela |${dados}[realEntProdParcela]|, Data Vencimento |${dados}[realEntProdDtVencimento]|, Valor |${dados}[realEntProdValor]|
    