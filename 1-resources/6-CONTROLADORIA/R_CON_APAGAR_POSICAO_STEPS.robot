##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para a Tela De Plano Contábil.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/R_CON_APAGAR_POSICAO_PAGE.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

*** Variable ***

*** Keywords ***
Preencher Intervalo Fixo |${DataIni}| |${DataFim}|
    Wait Until Element Is Visible       ${CampoDataIni}        250
    Preencher Campo                    ${CampoDataIni}        ${DataIni}
    Preencher Campo                    ${CampoDataFim}        ${DataFim}
    
Preencher Plano |${Plano}|
    Preencher Campo                    ${CampoPlano}        ${Plano}
Validar Relatorio
    Click no Item              ${BotaoImprimir}        
    Sleep    7
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
