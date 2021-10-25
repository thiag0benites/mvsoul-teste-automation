##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/M_ABERCONTAGEM_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher o campo <Estoque>|${estoque}|,|${motivo}|
    Wait Until Element is Visible    ${estoqueTable}            120
    Preencher campo                  ${estoqueTable}           ${estoque} 
    Click Element                    ${motivoTable}
    Preencher campo                  ${motivoTableInput}            ${motivo} 

Usuário deverá preencher o campo <Produto>|${produto01}|,|${produto02}|,|${produto03}|,|${produto04}|,|${produto05}|${print}
    Wait Until Element is Visible    ${produtoTable}            120
    Click Element                    ${produtoTable}
    Preencher campo                  ${produtoTableInput}           ${produto01}
    Clicar no botão Adicionar
    Sleep                            3
    Preencher campo                  ${produtoTableInput}           ${produto02}  
    Clicar no botão Adicionar
    Preencher campo                  ${produtoTableInput}           ${produto03} 
    Clicar no botão Adicionar 
    Preencher campo                  ${produtoTableInput}           ${produto04}  
    Clicar no botão Adicionar
    Preencher campo                  ${produtoTableInput}           ${produto05}  

