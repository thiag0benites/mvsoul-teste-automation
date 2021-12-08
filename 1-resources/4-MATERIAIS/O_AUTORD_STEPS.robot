##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_AUTORD_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo codigo |${codigo}|
    Preencher Campo                         ${inputCodigo}                  ${codigo} 

Clicar no botao Aprovada na Tabela
    Click no Item  ${btnAprovadaTable}
    Sleep  15

Clicar no botao confirmar Autorizacao
    Click no Item  ${btnConfirmarAutorizacao}
    Sleep      90
    
Clicar no botao Executar 
    Click no Item            ${btnExecute} 
    Sleep              30   