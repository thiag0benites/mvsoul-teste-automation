##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA\M_LOTE_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

${CurrentDate}

*** Keywords ***

Preencher o campo [Descrição]
    
Preencher o campo [Data final] a data do lançamento final do lote
    
Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Salvar'
        Wait Until Element Is Visible    ${btnSalvar}    60
        Click Button    ${btnSalvar}
        Sleep    3
    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    30
        Sleep    1
        Click Element    ${btnSim}
        Sleep    1
    END
    
Clicar duas vezes no campo [Lote] ou [Descrição]
    