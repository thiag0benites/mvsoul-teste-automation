##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ENTREGA_LAUDO_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

*** Keywords ***
Selecionar Selecionar Setor Solicitante |${Setor}|
    Sleep    30
    Click Element                        ${IconSetorSolicitante} 
    Wait Until Element Is Visible        ${PopUpLista}                   10
    Preencher campo                      ${CampoFiltro}                  ${Setor}
    Sleep    2
    Clicar no Botao |Filtar|
    Sleep    5
    ${Solicitante}=                      Get WebElement                  xpath://div[@title='${Setor}']
    Should Be Equal                      ${Solicitante.text}             ${Setor}
    Click Element                        ${Solicitante}
    Sleep    2
    Clicar no Botao |OK|


Selecionar Pedido de Exame Por Laudo |${Numero}|
    ${Laudo}=                      Get WebElement                  xpath://input[@class='editor-text ui-state-readonly mode-edit'][@value='${Numero}']
    # Should Be Equal                      ${Laudo.text}             ${Numero}
    Click Element                        ${Laudo}
    Sleep       2
    Clicar no Botao |Obs. Pedido|

Validar Pop Up de Observacoes  
    Wait Until Element Is Visible        ${PopUpObsPedido}                   10
    Sleep    8
    Variable Should Exist                  ${CampoObs}                              
       

Clicar no Botao |${NomeBotao}|
    Sleep    5
    IF       '${NomeBotao}' == 'OK'
        Click no Item                       ${btnOK} 
    ELSE IF  '${NomeBotao}' == 'Filtar'
        Click no Item                       ${btnFiltrar} 
    ELSE IF  '${NomeBotao}' == 'Obs. Pedido'
        Click no Item                       ${btnObsPedido}
    ELSE IF  '${NomeBotao}' == 'Voltar'
        Click no Item                       ${btnVoltar} 
    ELSE IF  '${NomeBotao}' == 'Pesquisar'
        Click no Item                       ${btnPesquisar}
    ELSE IF  '${NomeBotao}' == 'Pesquisa'
        Click no Item                       ${btnPesquisa}
    END
    Sleep    5
    