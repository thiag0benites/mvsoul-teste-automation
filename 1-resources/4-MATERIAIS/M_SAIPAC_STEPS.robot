##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_SAIPAC_PAGE.robot

*** Variable ***
${CurrentDate}

*** Keywords ***

Preencher o campos Estoque|${estoque}|, Atendimento|${atendimento}|
    Wait Until Element Is Visible    ${cpEstoque}    120
    Click Element       ${cpEstoque}
    Preencher Campo        ${cpEstoque}       ${estoque} 
    Sleep      3
    Click Element       ${cpAtendimento}
    Preencher Campo        ${cpAtendimento}       ${atendimento} 
    Sleep      3
    Press Keys    ${cpAtendimento}    ENTER
         
Clicar no botao[${nomeBtn}]
    IF    '${nomeBtn}' == 'Concluir'
        Wait Until Element Is Visible    ${btnConcluir}    60
        Click Element    ${btnConcluir}
        Sleep    3
        Click Element  ${btnOk2}
        Sleep       3
    ELSE IF    '${nomeBtn}' == 'Ok'
        Wait Until Element Is Visible    ${btnOk}    30
        Sleep    1
        Click Element    ${btnOk}
        Sleep    6
    END

Preencher o campo Produto|${produto}|
    Sleep       3 
    Double Click Element       ${elemCodProduto}
    Preencher Campo        ${cpProduto}       ${produto}
    Press Keys    ${cpProduto}    ENTER
    Sleep       3
    
Preencher o campo QtdDisponivel|${qtdDisponivel}|
    Click Element       ${cpQtd}
    Preencher Campo        ${inpQtd}       ${qtdDisponivel}
    # Press Keys    ${inpQtd}    ENTER
    
Captura codigo|${suite}|${id}| 
    Sleep    3
    Should Not Be Empty   ${cpCodigo}
    ${codigo}    Get Element Attribute    ${cpCodigo}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "codigo", valor "${codigo}"
    Sleep    3
