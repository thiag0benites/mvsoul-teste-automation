##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passos da tela M_WORKFLOW_PENDENCIAS_PSSD
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_WORKFLOW_PENDENCIAS_PSSD_PAGE.robot
Resource          ../2-pages/ContextoPage.robot

*** Variable ***

*** Keywords ***
Navegar entre as abas do painel operacional de pendencias
    Click no Item    ${abaColetaSetor}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba1]|

    Click no Item    ${abaAmostras}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba2]|

    Click no Item    ${abaResultados}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba3]|

    Click no Item    ${abaRevisao}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba4]|

    Click no Item    ${abaLiberacaoParcial}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba5]|

    Click no Item    ${abaLiberacao}
    Sleep    1
    Validar Acesso a Tela |${dados}[aba6]|
