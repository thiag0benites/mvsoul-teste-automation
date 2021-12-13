##################################################################################################################################
# Autor: Thiago Benites
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/DigitarProdutosInventarioPage.robot

*** Variable ***

*** Keywords ***
Preencher os campos codigo do produto |${dados}[digProdInvProduto]|, lote |${dados}[digProdInvLote]|, data de validade |${dados}[digProdInvValidade]|, Qrde. Estoque |${dados}[digProdInvQtdeEstoque]|
Concluir a digitação de todos os produtos acionar