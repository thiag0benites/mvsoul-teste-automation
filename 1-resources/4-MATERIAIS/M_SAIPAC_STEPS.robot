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
    Wait Until Element Is Visible    ${btnSimNotific}    120
    Click Button        ${btnSimNotific}
    Click Element       ${cpEstoque}
    Preencher Campo        ${cpEstoque}       ${estoque} 
    Sleep      3
    Click Element       ${cpAtendimento}
    Preencher Campo        ${cpAtendimento}       ${atendimento} 
    Sleep      3
    Press Keys    ${cpAtendimento}    ENTER
         
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Digitar Cód. do prod.'
        Wait Until Element Is Visible    ${btnbtnCodProdutoSim}    60
        Click Button    ${btnCodProduto}
        Sleep    3
    ELSE IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    30
        Sleep    1
        Click Element    ${btnSalvar}
        Sleep    6
    END

Preencher o campo Produto|${dados}[produto]|, QtdDisponivel|${dados}[qtdDisponivel]|
    Click Element       ${}
    Preencher Campo        ${}       ${}
    Press Keys    ${}    ENTER


        