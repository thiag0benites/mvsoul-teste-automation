##################################################################################################################################
# Autor: Thiago Benites
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/SolicitarProdutosEstoquePage.robot

*** Variable ***

*** Keywords ***
Usuario devera marcar o radioButton |${dados}[checkBoxEstoque]|
Preencher os campos Estoque |${dados}[66]|, Estoque destino |${dados}[67]|, Setor |${dados}[solProdSetor]|
Validar redirecionamento para Produtos Solicitados
Preencher os campos Produto |${dados}[solProdProduto]|, Qtde |${dados}|solProdQtde||