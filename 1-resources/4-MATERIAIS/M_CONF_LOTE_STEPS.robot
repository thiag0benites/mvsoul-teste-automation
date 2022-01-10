##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_LIST_CONS_PAC_PAGE.robot

*** Variable ***

*** Keywords ***
Clique em impressao de relatorio de conferencia de lote
   Click no Item           ${botaoImprimirRel}    
   Sleep      1

Validar relatorio de conferencia de lote
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1  