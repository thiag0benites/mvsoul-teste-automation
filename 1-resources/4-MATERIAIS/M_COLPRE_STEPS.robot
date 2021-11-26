##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_DEVFOR - Devolução de produtos para fornecedores
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_COLPRE_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Solicitacao|${solicitacao}|, Fornecedor|${fornecedor}|, Dt Validade|${dtValidade}|, Condicao pagamentos|${condPagamentos}|, Valor Total Coleta|${vlTotColeta}|, Valor frete|${vlFrete}|, Valor Desconto|${vlDesconto}|
    Wait Until Element Is Visible    ${cpSolicitacao}    120
    Preencher Campo        ${cpSolicitacao}       ${solicitacao} 
    Sleep      6
    Preencher Campo        ${cpFornecedor}       ${fornecedor} 
    Sleep      4
    Preencher Campo        ${cpDtValidade}       ${dtValidade} 
    Sleep      4
    Preencher Campo        ${cpVlrTotal}       ${vlTotColeta} 
    Sleep      4
    Preencher Campo        ${cpVlrFrete}       ${vlFrete} 
    Sleep      4
    Preencher Campo        ${cpVlrDesconto}       ${vlDesconto} 
    Sleep      4
    

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    ELSE IF     '${nomeBtn}' == 'Buscar Dados da Solicitação'
        Wait Until Element Is Visible   ${btnBuscaDados}     30
        Sleep       1
        Click Element       ${btnBuscaDados}
        Sleep       6
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible   ${btnSim}     30
        Sleep       1
        Click Element       ${btnSim}
        Sleep       6
    END

Preencher o campo Valor Unitario|${dados}[vlUnitario]|
    Click Element       ${}
    Preencher Campo        ${}       ${} 
    #Press Keys      ${inpProduto}       ENTER
    Sleep      3
    
    