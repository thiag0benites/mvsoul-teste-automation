##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para aprovação de uma de solicitação de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/C_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Código |${codigo}|
    Sleep          1
    Preencher campo  ${inputCodigo}  ${codigo}            

Validar Código de Aprovação
    Validar Informacao Item  ${campoNomeDoFornecedor}    690  
          