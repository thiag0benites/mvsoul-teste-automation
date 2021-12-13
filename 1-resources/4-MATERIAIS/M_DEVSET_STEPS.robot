##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_DEVFOR - Devolução de produtos para fornecedores
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_DEVSET_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Estoque|${estoque}|, Setor|${setor}|, Motivo de Devolucao|${motDevolucao}|
    Wait Until Element Is Visible    ${cpEstoque}    180
    Preencher Campo        ${cpEstoque}       ${estoque} 
    Sleep      3
    Preencher Campo        ${cpSetor}       ${setor} 
    Sleep      3
    Preencher Campo        ${cpMotivo}       ${motDevolucao} 
    Sleep      3
    

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnsalvar}    30
        Sleep    1
        Click Element    ${btnsalvar}
    ELSE IF     '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible   ${}     30
        Sleep       1
        Click Element       ${}
        Sleep       6
    END

Preencher o campo Produto|${produto}|, Qtde. Recebida.|${quantidade}|
    Click Element       ${elemProduto}
    Preencher Campo        ${cpProduto}       ${produto} 
    #Press Keys      ${inpProduto}       ENTER
    Sleep      3
    Click Element       ${elemQtdade}
    Preencher Campo        ${cpQtdade}       ${quantidade} 
    Sleep      3
    