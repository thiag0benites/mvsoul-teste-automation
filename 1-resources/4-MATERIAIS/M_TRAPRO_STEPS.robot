##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a Passo para tela de M_TRAPRO.
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/4-MATERIAIS/M_TRAPRO_PAGE.robot

*** Variable ***

*** Keywords ***


Clicar no Botao |${nomeBtn}|
    IF    '${nomeBtn}' == 'OK'
        Wait Until Element Is Visible    ${btnOk}    120
        Sleep    1
        Click Element    ${btnOk}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    120
        Sleep    1
        Click Element    ${btnSim}
        Sleep    1
    END    

Preencher Estoque Origem |${estoqueOrigem}|
    Preencher campo  ${inputEstoqueOrigem}  ${estoqueOrigem}

Preencher Estoque Destino |${estoqueDestino}|
    Click no Item  ${campoEstoqueDestino}
    Preencher campo  ${inputEstoqueDestino}  ${estoqueDestino}

Preencher Produto |${produto}|, Lote|${lote}| e Qtd de transferencia |${qtdTransferencia}|
    Click no Item  ${CampoProduto}
    Preencher campo  ${inputProduto}  ${produto}
    
    Click no Item  ${CampoLote}
    Preencher campo  ${inputLote}  ${lote}

    Click no Item  ${CampoQtdTransferencia}
    Preencher campo  ${inputQtdTransferencia}   ${qtdTransferencia}

          

