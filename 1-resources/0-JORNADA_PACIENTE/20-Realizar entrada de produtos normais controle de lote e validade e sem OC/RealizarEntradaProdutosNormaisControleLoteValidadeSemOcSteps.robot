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
    
Indicar o estoque onde será efetuada a entrada do produto no campo <Estoque>
    
Informar os campos Nr Doc |${dados}[realEntProdNrDoc]|,Serie |${dados}[realEntProdSerie]|, Fornecedor |${dados}[realEntProdFornecedor]|, Dt Emissao |${dados}[rrealEntProdDtEmissao]|, CFOP |${dados}[realEntProdCFOP]|, Vl Total da Nota |${dados}[realEntProdVlTotalNota]|

Informar os campos Produto |${dados}[realEntProdCodProd]|, Quantidade |${dados}[realEntProdQtde]|, Valor unitario |${dados}[realEntProdVrUnit]|

Informar os campos Parcela |${dados}[realEntProdParcela]|, Data Vencimento |${dados}[realEntProdDtVencimento]|, Valor |${dados}[realEntProdValor]|
    