##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/C_PAGTO_REALIZ_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos data inicial e data final |${dataInicial}|,|${dataFinal}|
    Preencher Campo    ${campoDataInicial}          ${dataInicial}
    Preencher Campo    ${campoDataFinal}            ${dataFinal}
    Press Keys         ${campoDataFinal}            ENTER

Validar Resultado da Pesquisa realizada |${dado}|
    Validar Elemento Pelo Titulo            ${dado}   
