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
Selecionar Ordem de Compra Autorizada |${CodigoOC}|
    Sleep    10
    Click Element                        ${IconOrdCompra}
    Wait Until Element Is Visible        ${PopUpLista}                   10
    Click Element                        ${IconEvolucao}
    Preencher campo                      ${CampoFiltro}                  ${CodigoOC}
    Sleep    2
    Clicar no Botao |Filtar|
    Sleep    5
    ${Codigo}=                            Get WebElement                 xpath://div[@title='${CodigoOC}']
    Should Be Equal                      ${Codigo.text}                  ${CodigoOC}
    Click Element                        ${Codigo}
    Sleep    2
    Clicar no Botao |OK|

Selecionar Ultima Ordem de Compra da Lista
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
    Sleep    2
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
    Click Element                        ${CampoNrDoc}  
    Sleep    2
    Preencher campo                      ${CampoNrDoc}                ${Numero}
    Sleep    2

Preencher Campo Serie |${valor}|
    Click Element                        ${CampoSerie}  
    Sleep    5
    Preencher campo                      ${CampoSerie}                  ${valor}
    Sleep    2   

Preencher Campo Data Emissao |${Data}|
    Click Element                        ${CampoDataEmissao} 
    Sleep    2
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

    IF  '${NomeBotao}' == 'Sair'
        Wait Until Element Is Visible       ${btnSair}                     10
        Sleep                               2
        Click Element                       ${btnSair}  
    END

    IF  '${NomeBotao}' == 'Duplicata'
        Wait Until Element Is Visible       ${btnDuplicata}                10
        Sleep                               2
        Click Element                       ${btnDuplicata} 
    END

    IF  '${NomeBotao}' == 'Sim'
        Wait Until Element Is Visible       ${btnSim}                10
        Sleep                               2
        Click Element                       ${btnSim}
    END

    IF  '${NomeBotao}' == 'Nao'
        Wait Until Element Is Visible       ${btnNao}                  10
        Sleep                               2
        Click Element                       ${btnNao}  
    END

    IF  '${NomeBotao}' == 'Confirmar Duplicata'
        Wait Until Element Is Visible       ${btnConfirmarDuplicata}                  10
        Sleep                               2
        Click Element                       ${btnConfirmarDuplicata}   
    END

    IF  '${NomeBotao}' == 'Concluir'
        Wait Until Element Is Visible       ${btnConcluir}                             10
        Sleep                               2
        Click Element                       ${btnConcluir}  
    END
                                   
                                   
Cadastrar Lote |${Lote},${DataValidade}|
    Wait Until Element Is Visible        ${brnCadastrarLote}                    20
    ${Quant}=                         Get Element Attribute                  xpath://div[@data-member='QT_ENTRADA']     attribute=title
    # Log    ${Quant.text}
    # Log To Console        ${Quant.text}
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
    Sleep                               5
    Clicar no Botao |Sair|
    Sleep                               2

Confirmar Duplicata
    Sleep                               5
    Clicar no Botao |Duplicata|
    Sleep                               5
    Clicar no Botao |Sim|
    Sleep                               5
    Clicar no Botao |Confirmar Duplicata|

Concluir e Avaliar
    Sleep                               5
    Clicar no Botao |Concluir|
    Sleep                               5
    Clicar no Botao |Sim|
    Sleep                               5
    Clicar no Botao |Nao|

                                  
                               
                            
                          