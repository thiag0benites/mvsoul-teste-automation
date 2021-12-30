##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a Passo para a Tela De relatório de balancete
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/R_BALANCETE_PAGE.robot

*** Variable ***

*** Keywords ***   
Imprimir relatorio de balancete
    Click no Item           ${botaoImprimir}    
    Sleep      1
    Click no Item           ${botaoSim}

Realizar impressao de relatorio de balancete
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1
