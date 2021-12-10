##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/DevolucaoProdutosPage.robot

*** Variable ***

*** Keywords ***
Marcar o check box <2- Setor> e preencher os seguintes campos com dados válidos |${dados}[DevProdMsgEsperada]|
    
Clicar no botão [Sim] da mensagem e na tecla <TAB>
    
    
Informar todos os produtos digitados na saída |${dados}[DevProdMsgEsperadaFinal]|
