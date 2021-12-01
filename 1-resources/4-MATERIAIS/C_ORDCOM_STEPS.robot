##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para consultar ordens de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/C_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Codigo |${codigo}|
    Sleep          1
    Preencher campo  ${inputCodigo}  ${codigo}            

Validar Ordem de Compra pelo fornecedor |${nomeDoFornecedor}|
    Validar Informacao Item  ${campoNomeDoFornecedor}    ${nomeDoFornecedor}  
          