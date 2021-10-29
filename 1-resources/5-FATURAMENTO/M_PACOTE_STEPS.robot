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
    Click no Item                    ${grupoProced}
    Preencher campo                  ${grupoProcedInput}                     ${grupoProced}

    Click no Item                    ${procedimento}
    Preencher campo                  ${procedimentoInput}                    ${procedimento}
    
    Click no Item                    ${setor}
    Preencher campo                  ${setorInput}                           ${setor}

    Click no Item                    ${acomodacao}
    Preencher campo                  ${acomodacaoInput}                      ${acomodacao}

