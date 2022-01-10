##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher na table o numero da ordem de compra |${numOrdemCompra}|
    Click no Item                               ${numOrdem} 
    Sleep      1
    Preencher Campo                             ${numOrdemInput}            ${numOrdemCompra}
    Press Keys          ${numOrdemInput}                ENTER
    
Imprimir ordem de compra 
    Click no Item                               ${imprimirOrdCom} 

Verificar impressao da tela 
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1