##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_DEVFOR - Devolução de produtos para fornecedores
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_DEVFOR_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Entrada|${entrada}|, Nr Documento|${nrDocumento}|, Serie|${serie}|, Motivo de Devolucao|${mDevolucao}|
    Wait Until Element Is Visible    ${cpEntrada}    120
    Preencher Campo        ${cpEntrada}       ${entrada} 
    Sleep      3
    Preencher Campo        ${cpNrDoc}       ${nrDocumento} 
    Sleep      3
    Preencher Campo        ${cpSerie}       ${serie} 
    Sleep      3
    Preencher Campo        ${cpMotivo}       ${mDevolucao} 
    Sleep      3

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible   ${btnSim}     30
        Sleep       1
        Click Element       ${btnSim}
        Sleep       6
    END

Preencher o campo Produto|${produto}|, Qtde. Devolvida.|${qtdDevolvida}|
    Click Element       ${elemProduto}
    Preencher Campo        ${inpProduto}       ${produto} 
    #Press Keys      ${inpProduto}       ENTER
    Sleep      3
    Click Element       ${eleQtdDevolvida}
    Preencher Campo        ${inpQtdDevolvida}       ${qtdDevolvida} 
    Sleep      3
    