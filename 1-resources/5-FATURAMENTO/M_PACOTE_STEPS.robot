##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Cobranças e tabelas
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/5-FATURAMENTO/M_PACOTE_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar na aba Exceções
    Click Element               ${abaExcecoes}
    Sleep                       2

Usuário deverá preencher os campos|${grupoProced}|,|${procedimento}|,|${setor}|,|${acomodacao}|
    Click Element                    ${grupoProced}
    Sleep                            2
    Preencher campo                  ${grupoProcedInput}                     ${grupoProced}

    Click Element                    ${procedimento}
    Sleep                            2
    Preencher campo                  ${procedimentoInput}                    ${procedimento}
    
    Click Element                    ${setor}
    Sleep                            2
    Preencher campo                  ${setorInput}                           ${setor}

    Click Element                    ${acomodacao}
    Sleep                            2
    Preencher campo                  ${acomodacaoInput}                      ${acomodacao}
    Sleep                            2
