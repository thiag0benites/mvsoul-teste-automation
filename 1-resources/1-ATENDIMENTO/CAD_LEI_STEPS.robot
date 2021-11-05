##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CAD_LEI_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo código de unidade da internacao |${codigo}|
    Preencher campo                  ${inputCodigo}              ${codigo} 