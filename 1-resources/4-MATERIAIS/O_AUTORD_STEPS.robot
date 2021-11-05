##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_AUTORD_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo código |${codigo}|
    Preencher Campo                         ${inputCodigo}                  ${codigo} 

Clicar no botão Aprovada na Tabela
    Click no Item  ${btnAprovadaTable}
    Sleep  15

Clicar no botão confirmar Autorizacao
    Click no Item  ${btnConfirmarAutorizacao}
    Sleep      90
