##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/4-MATERIAIS/M_ENTRADA_NOVA_(COM_OC)_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

*** Keywords ***
Selecionar Ordem de Compra Autorizada
    Sleep    45
    Click Element                        ${IconOrdCompra} 
    Wait Until Element Is Visible        ${PopUpLista}                 10
    Click Element                        ${IconEvolucao}
    Wait Until Element Is Visible        ${PopUpLista}                 10
    Click Element                        ${IconUltimaPg}
    Sleep    2
    Click Element                        ${PrimeiraLinha} 
    Sleep    2
    Click Element                        ${PrimeiraLinha} 


Clicar no Botao |${NomeBotao}|
    IF  '${NomeBotao}' == 'OK'
        Wait Until Element Is Visible       ${btnOK}                 10
        Sleep                               2
        Click Element                       ${btnOK} 
    END