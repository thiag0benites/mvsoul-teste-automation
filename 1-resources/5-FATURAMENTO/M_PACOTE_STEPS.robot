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
    Click no Item                   ${abaExcecoes}

Usuário deverá preencher os campos|${grupoProced}|,|${procedimento}|,|${setor}|,|${acomodacao}|
    Preencher campo                  ${grupoProcedInput}                     ${grupoProced}
    Sleep                            2

    Wait Until Element is Visible    ${procedimentoTable}                       60
    Click no Item                    ${procedimentoTable}
    Sleep                            2
    Preencher campo                  ${procedimentoInput}                    ${procedimento}
    Sleep                            2

    Wait Until Element is Visible    ${setor}                                   60
    Click no Item                    ${setor}
    Sleep                            2
    Preencher campo                  ${setorInput}                           ${setor}
    Sleep                            2

    Click no Item                    ${acomodacao}
    Sleep                            2
    Preencher campo                  ${acomodacaoInput}                      ${acomodacao}
    Sleep                            2

