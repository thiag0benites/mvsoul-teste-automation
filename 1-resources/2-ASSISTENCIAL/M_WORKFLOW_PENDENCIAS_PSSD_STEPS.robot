##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passos da tela M_WORKFLOW_PENDENCIAS_PSSD
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_WORKFLOW_PENDENCIAS_PSSD_PAGE.robot

*** Variable ***

*** Keywords ***
Navegar entre as abas do painel operacional de pendencias
    Click no Item    ${abaColetaSetor}
    Sleep    1
    Click no Item    ${abaAmostras}
    Sleep    1
    Click no Item    ${abaResultados}
    Sleep    1

Validar resultados do painel de operacoes |${codAtend1}|,|${codAtend2}|,|${codAtend3}|
    Validar Elemento Pelo Titulo    ${codAtend1}
    Validar Elemento Pelo Titulo    ${codAtend2}
    Validar Elemento Pelo Titulo    ${codAtend3}