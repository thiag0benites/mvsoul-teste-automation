##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo da Tela de solicitação de Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/SolicitacaoDeProdutosPage.robot

*** Variable ***

*** Keywords ***
Preencher campo de Solicitação |${codSolicitacao}|
    Preencher campo  ${inputSolicitacao}     ${codSolicitacao}  

