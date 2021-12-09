##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/M_MODELO_WIZARD_1_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos da tabela |${codigo}|,|${descricao}|
    Preencher Campo                             ${campoCodigo}                    ${codigo}
    Preencher Campo                             ${campoDescricao}                 ${descricao}

Validar cadastro realizado do modelo contabil |${mensagem}|
    Valida Mensagem         ${mensagem}         ${mensagem}