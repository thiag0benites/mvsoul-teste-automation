##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/6-CONTROLADORIA/M_MODELO_WIZARD_1_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar no botao Adicionar da tela modelo contabil
    Click no Item    ${buttonAdiciona}

Preencher os campos da tabela |${codigo}|,|${descricao}|
    Preencher Campo    ${campoCodigo}    ${codigo}
    Sleep    1
    Click no Item    ${campoDescricao}
    Sleep    1
    Preencher Campo    ${campoDescricaoInput}    ${descricao}
