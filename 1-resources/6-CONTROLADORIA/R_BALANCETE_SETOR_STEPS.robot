##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a Passo para a Tela De relatório de balancete do setor.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/R_BALANCETE_SETOR_PAGE.robot

*** Variable ***

*** Keywords ***   
Preencher os campos ano e grau |${ano}|,|${grau}|
    Preencher Campo    ${campoAno}          ${ano}
    Preencher Campo    ${campoGrau}         ${grau}

Realizar e validar impressao de relatorio 
    Click no Item           ${botaoImprimir}
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1
