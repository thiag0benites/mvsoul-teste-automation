##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_FICHA_ESTOQUE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos estoque e produto |${estoque}|,|${produto}|  
    Preencher Campo                         ${campoEstoque}             ${estoque} 
    Sleep     1 
    Preencher Campo                         ${campoProduto}             ${produto} 

Clique no botao imprimir ficha de estoque
   Click no Item           ${botaoImprimirEtiqueta}    
   Sleep      1

Realizar impressao da tela 
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1