##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para aprovação de uma de solicitação de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../../2-pages/4-MATERIAIS/M_APROVA_SOLCOM_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Codigo |${codigo}|
    Sleep              1
    Preencher campo    ${inputCodigo}    ${codigo}    
                

Validar Codigo de Aprovacao |${validaCodAprovacao}|
    Send keys          enter 
    Element Should Contain    ${campoNdFornecedor}    ${validaCodAprovacao}