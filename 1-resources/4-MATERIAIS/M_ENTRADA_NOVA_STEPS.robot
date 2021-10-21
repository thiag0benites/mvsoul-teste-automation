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
    Sleep    2
    Clicar no Botao |OK|

Selcionar Tipo de Documento |${TipoDoc}|
    Click Element                        ${IconTipodeDoc}
    Wait Until Element Is Visible        ${PopUpTiposdeDoc}             10
    Sleep    2
    Preencher campo                      ${CampoFiltro}                 ${TipoDoc}
    Sleep    2
    Clicar no Botao |Filtar|
    Sleep    5
    ${Documento}=                        Get WebElement                 xpath://div[@title='${TipoDoc}']
    Should Be Equal                      ${Documento.text}              ${TipoDoc}
    Click Element                        ${Documento}
    Sleep    2
    Clicar no Botao |OK|

Preencher Campo Nr Doc |${Numero}|
    Sleep    2
    Preencher campo                      ${CampoNrDoc}                ${Numero}
    Sleep    2

Preencher Campo Serie |${valor}|
    Sleep    2
    Preencher campo                      ${CampoSerie}                  ${valor}
    Sleep    2   

Preencher Campo Data Emissao |${Data}|
    Preencher campo                      ${CampoDataEmissao}            ${Data}
    Sleep    2

Selcionar CFOP |${cfop}|
    Click Element                        ${IconCfop} 
    Wait Until Element Is Visible        ${PopUpCod}                     10
    Sleep    2
    Preencher campo                      ${CampoFiltro}                 ${cfop}
    Sleep    2
    Clicar no Botao |Filtar|
    Sleep    2
    ${Descricao}=                        Get WebElement                 xpath://div[@title='${cfop}']
    Should Be Equal                      ${Descricao.text}              ${cfop}
    Click Element                        ${Descricao}
    Clicar no Botao |OK|

    
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

    IF  '${NomeBotao}' == 'Produtos'
        Wait Until Element Is Visible       ${btnProdutos}                10
        Sleep                               2
        Click Element                       ${btnProdutos}
    END

    IF  '${NomeBotao}' == 'Cadastrar Lote'
        Wait Until Element Is Visible       ${brnCadastrarLote}                10
        Sleep                               2
        Click Element                       ${brnCadastrarLote}
    END

    IF  '${NomeBotao}' == 'Digitacao de Produtos'
        Wait Until Element Is Visible       ${btnDigitacaoProd}                10
        Sleep                               2
        Click Element                       ${btnDigitacaoProd} 
    END
 


Cadastrar Lote |${Lote},${DataValidade}|
    Wait Until Element Is Visible        ${brnCadastrarLote}                    20
    ${Quant}=                         Get Value                 xpath://div[@data-member='QT_ENTRADA']
    Log    ${Quant}
    Log To Console        ${Quant}
    Clicar no Botao |Cadastrar Lote|
    Sleep                               5
    Preencher campo                      ${Campo}               ${Lote}
    Sleep                               5
    Press Keys                            ${Campo}                TAB
    Sleep                                2
    Preencher campo                      ${Campo}               ${DataValidade}
    Sleep                                5
    Press Keys                            ${Campo}                TAB
    Sleep                                2       
    Preencher campo                      ${Campo}                ${Quant}
    Sleep                               5
    Clicar no Botao |Digitacao de Produtos|



                                  
                               
                            
                          