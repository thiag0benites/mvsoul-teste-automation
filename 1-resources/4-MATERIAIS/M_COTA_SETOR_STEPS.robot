##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela M_COTA_SETOR 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_COTA_SETOR_PAGE.robot

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


Preencher os campos Estoque|${estoque}|, Setor|${setor}|, Cód Produto|${codProduto}|, Unidade|${unidade}|, Qtd Cota|${qtdCota}|, Dias|${dias}|, Cód Gabarito|${codGabarito}|
    Wait Until Element Is Visible    ${cpEstoque}    120
    Preencher Campo        ${cpEstoque}       ${estoque} 
    Press Keys          ${cpEstoque}        ENTER
    Sleep      6
    Preencher Campo        ${cpSetor}       ${setor} 
    Press Keys          ${cpSetor}        ENTER
    Sleep      4
    Preencher Campo        ${cpCodProduto}       ${codProduto} 
    Press Keys          ${cpCodProduto}        ENTER
    Sleep      4
    Preencher Campo        ${cpUnidade}       ${unidade} 
    Press Keys          ${cpUnidade}        ENTER
    Sleep      4
    Preencher Campo        ${cpQtdCota}       ${qtdCota} 
    Press Keys          ${cpQtdCota}        ENTER
    Sleep      4
    Preencher Campo        ${cpQtdDias}       ${dias} 
    Press Keys          ${cpQtdDias}        ENTER
    Sleep      4
    Click Element       ${elemGabarito}
    Preencher Campo     ${cpGabarito}       ${codGabarito}
    Sleep       3
    
Selecionar checbox [Desat]
    Click Element   ${checkBoxDesat}
    Sleep   2
    Wait Until Element Is Visible    ${validaCampSetor}    30
    Sleep   2
    Wait Until Element Is Visible    ${validaCampProduto}    30
    Sleep   2
    Wait Until Element Is Visible    ${validaCampSetor}    30

Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
    END

