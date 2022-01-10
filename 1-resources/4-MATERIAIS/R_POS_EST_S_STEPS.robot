##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_POS_EST_S_PAGE.robot

*** Variable ***

*** Keywords ***
Clique em impressao de relatorio Posicao de Estoque Simplificado
  Click no Item           ${btnImprimirRel}    
   Sleep      1

Validar relatorio de posicao de estoque Simplificado
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1