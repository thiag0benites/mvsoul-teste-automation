##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Baixa de produto
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_BAIPRO_PAGE.robot

*** Variable ***

*** Keywords ***
Acessar |${tela}|${printscreen} ${las}
    Unselect Frame
    Click Element    ${HomeXpathBtnPesquisa}
    Preencher campo  ${HomeXpathBtnPesquisaInput}       ${tela}
    Sleep    1
    Click Element    ${ScreenBaixaProdutos} 

    #### LAS Send Keys #####
    IF    "${las}" == "@las"
        # Sleep    1
        Seleciona frame    ${IdIframe}    180
        Wait Until Element Is Visible    ${classLasDisplay}    180
        Unselect Frame
        # Sleep    1
        Send Keys    tab
        Send Keys    enter
    END
    #### End LAS Send Keys #####
    Seleciona frame    ${IdIframe}    180
    Sleep    3
    Run Keyword If    '${printscreen}' == '@print'    Capture Page Screenshot
    Sleep    60


Preencher os campos Estoque|${estoque}|, Setor|${setor}|, Observação|${observação}|, Motivo da Baixa|${mBaixa}|
    Wait Until Element Is Visible    ${cpEstoque}    120
    Preencher Campo        ${cpEstoque}       ${estoque} 
    Sleep      3
    Press Keys    ${cpEstoque}    ENTER
    Click Element       ${cpSetor}
    Preencher Campo        ${cpSetor}       ${setor} 
    Sleep      3
    Click Element       ${cpMotBaixa}
    Preencher Campo        ${cpMotBaixa}       ${mBaixa} 
    Sleep      3
    Click Element       ${cpObservacao}
    Preencher Campo        ${cpObservacao}       ${observação} 
    Sleep      3

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    ELSE IF     '${nomeBtn}' == 'Digitar cód de Barras'
        Wait Until Element Is Visible   ${btnDigCodBarras}     30
        Sleep       1
        Click Element       ${btnDigCodBarras}
    END

Preencher o campo Produto|${produto}|, Unidade.|${unidade}|, Qtde. Disp.|${qtdDisp}|
    Preencher Campo        ${CodProduto}       ${produto} 
    Press Keys      ${CodProduto}       ENTER
    Sleep      3
    Click Element       ${elemUnidade}
    Preencher Campo        ${cpUnidade}       ${EMPTY} 
    Sleep      3
    Preencher Campo        ${cpUnidade}       ${unidade} 
    Press Keys      ${cpUnidade}       ENTER
    Sleep      3
    Preencher Campo        ${inpQtdDisp}       ${qtdDisp} 
    Sleep      3

Selecionar checkbox Doacao
    Click Element       ${checkDoacao}
    Sleep      3
