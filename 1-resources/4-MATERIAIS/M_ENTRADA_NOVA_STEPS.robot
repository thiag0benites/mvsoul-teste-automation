##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ENTRADA_NOVA_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

*** Keywords ***
Selecionar Ordem de Compra Autorizada
    Sleep    10
    Click Element                        ${IconOrdCompra}
    Wait Until Element Is Visible        ${PopUpLista}                 10
    Click Element                        ${IconEvolucao}
    Sleep    2
    Click Element                        ${IconUltimaPg}
    Sleep    2
    Click Element                        ${PrimeiraLinha} 

Selcionar Tipo de Documento |${TipoDoc}|
    Click Element                        ${IconTipodeDoc}
    Wait Until Element Is Visible        ${PopUpTiposdeDoc}             10
    Sleep    2
    Preencher campo                      ${CampoFiltro}                 ${TipoDoc}
    Sleep    2
    Clicar no Botao |Filtar|
    ${Documento}=                        Get WebElement                 xpath://div[@title='${TipoDoc}']
    Should Be Equal                      ${Documento.text}              ${TipoDoc}
    Click Element                        ${Documento}
            
Clicar no Botao |${NomeBotao}|
    IF  '${NomeBotao}' == 'OK'
        Wait Until Element Is Visible       ${btnOK}                 10
        Sleep                               2
        Click Element                       ${btnOK} 
    END

    IF  '${NomeBotao}' == 'Filtar'
        Wait Until Element Is Visible       ${btnFiltrar}                 10
        Sleep                               2
        Click Element                       ${btnFiltrar} 
    END

    