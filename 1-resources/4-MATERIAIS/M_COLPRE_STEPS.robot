##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_DEVFOR - Devolução de produtos para fornecedores
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_COLPRE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Solicitacao|${solicitacao}|, Fornecedor|${fornecedor}|, Dt Validade|${dtValidade}|, Condicao pagamentos|${condPagamentos}|, Valor Total Coleta|${vlTotColeta}|
    Wait Until Element Is Visible    ${cpSolicitacao}    120
    Preencher Campo        ${cpSolicitacao}       ${solicitacao} 
    Sleep      6
    Preencher Campo        ${cpFornecedor}       ${fornecedor} 
    Sleep      4
    Preencher Campo        ${cpDtValidade}       ${dtValidade} 
    Sleep      4
    Preencher Campo        ${cpVlrTotal}       ${vlTotColeta} 
    Sleep      4
    Preencher Campo         ${cpCondPagamento}      ${condPagamentos}
    Sleep      4

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    # ELSE IF     '${nomeBtn}' == 'Buscar Dados da Solicitação'
    #     Wait Until Element Is Visible   ${btnBuscaDados}     30
    #     Sleep       1
    #     Click Element       ${btnBuscaDados}
    #     Sleep       6
    ELSE IF     '${nomeBtn}' == 'ConfirmaPreco'
        Wait Until Element Is Visible   ${btnConfPreco}     30
        Sleep       1
        Click Element       ${btnConfPreco}
        Sleep       6
    # ELSE IF     '${nomeBtn}' == 'Sim2'
    #     Wait Until Element Is Visible   ${btnSim2}     30
    #     Sleep       1
    #     Click Element       ${btnSim2}
    #     Sleep       6
        
    ELSE IF     '${nomeBtn}' == 'Sim3'
        Wait Until Element Is Visible   ${btnSim}     30
        Sleep       1
        Click Element       ${btnSim3}
        Sleep       6   

    ELSE IF     '${nomeBtn}' == 'Produtos'
        Wait Until Element Is Visible   ${btnProdutos}     30
        Sleep       1
        Click Element       ${btnProdutos}
        Sleep       6   
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible   ${btnSim3}     30
        Sleep       1
        Click Element       ${btnSim3}
        Sleep       6   
    END


Preencher O Campo Produto|${produto}|, Quantidade Cotada|${qtdCotada}|, Valor Unitario|${vlUntario}|
    Preencher Campo        ${cpProduto}       ${produto} 
    Press Keys      ${cpProduto}       ENTER
    Sleep      3
    Click Element       ${elemQtdCotada}
    Preencher Campo        ${cpQtdCotada}       ${qtdCotada} 
    Press Keys      ${cpQtdCotada}       ENTER
    Sleep       3
    #Click Element       ${elemVlUnitario}
    Preencher Campo        ${cpVlUnitario}       ${vlUntario} 
    Press Keys      ${cpVlUnitario}       ENTER
    Sleep      3
    
Captura codigo|${suite}|${id}|
    Sleep    1
    Should Not Be Empty   ${cpCodigo}
    ${CodigoSolicitacao}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigo", valor "${CodigoSolicitacao}"
    Sleep    3