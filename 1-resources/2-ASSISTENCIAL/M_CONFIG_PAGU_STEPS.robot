##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passos da tela
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_CONFIG_PAGU_PAGE.robot

*** Variable ***

*** Keywords ***
Ir para a Aba Geral
    Click no Item    ${abaGeral}
    Sleep    1

Ir para a Aba Setor
    Click no Item    ${abaSetor}
    Sleep    1

Visualizar a Prescricao de enfermagem na Aba Setor
    Click no Item    ${abaPrescEnfer}
    Sleep    1

Visualizar Avaliacao na Aba Setor
    Click no Item    ${abaAvaliacao}
    Sleep    1

Visualizar Balanco Hidrico na Aba Setor
    Click no Item    ${abaBalancoHidrico}
    Sleep    1

Ir para a Aba Prescricao Medica
    Click no Item    ${abaPrescMed}
    Sleep    1

Ir para a Diagnostico
    Click no Item    ${abaDiagnostico}
    Sleep    1

Ir para a Aba Parecer
    Click no Item    ${abaParecer}
    Sleep    1

Ir para a aba Aprazamento e checagem
    Click no Item    ${abaAprazamentChec}
    Sleep    1

Ir para a aba Portal
    Click no Item    ${abaPortal}
    Sleep    1

Ir para a aba Empresas externas
    Click no Item    ${abaEmpresasExt}
    Sleep    1
