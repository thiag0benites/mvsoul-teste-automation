##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a Passo para a Tela De Plano Contábil.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/6-CONTROLADORIA/PLANOS_CONTA_CONTABIL_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Tela e seus elementos |${valueTableContas}|,|${valueTablePlanos}|
    Wait Until Element Is Visible           ${tableContas}              250
    Element Should Contain                  ${tableContas}          ${valueTableContas}

    Wait Until Element Is Visible           ${tablePlanos}              250
    Element Should Contain                  ${tablePlanos}          ${valueTablePlanos}

Navegar entre as abas da tela de planos de conta contabil
    Click no Item    ${abaLog}
    Sleep    1

    Click no Item    ${abaTransacao}
    Sleep    1

    Click no Item    ${abaSped}
    Sleep    1

    Click no Item    ${abaContaReferencial}
    Sleep    1
    