##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para consultar ordens de compra.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/C_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Código |${codigo}|
    Sleep          1
    Preencher campo  ${inputCodigo}  ${codigo}            

