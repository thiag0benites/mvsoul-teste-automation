##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_LIST_CONS_PAC_PAGE.robot

*** Variable ***

*** Keywords ***
Clique em impressao de relatorio de Consumo de produtos por paciente ou setor
   Click no Item           ${botaoImprimir}    
   Sleep      1

Realizar impressao de relatorio de consumo
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1