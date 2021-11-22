##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CALC_DEPREC_PAGE.robot

*** Variable ***
${dados}

*** Keywords ***

Preencher o campo Mês/Ano geracao|${mesAno}|
    Preencher Campo        ${mesAnoGeracao}       ${mesAno}
    Press Keys    ${mesAnoGeracao}    ENTER
    Sleep      3    
   
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Gerar depreciação'
        Wait Until Element Is Visible    ${btnGerarDeprec}    60
        Click Button    ${btnGerarDeprec}
        Sleep    3
        Wait Until Element Is Visible       ${listaItensDeprec}     60
        Sleep       3
    ELSE IF    '${nomeBtn}' == 'Desfazer depreciações'
        Wait Until Element Is Visible    ${btnDesfazerDeprec}    30
        Sleep    3
        Click Button    ${btnDesfazerDeprec}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${mensagemPop}    30
        Sleep    1
        Click Element    ${btnSim}
        Sleep    6
    END
