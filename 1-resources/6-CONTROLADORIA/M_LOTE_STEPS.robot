##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA\M_LOTE_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

*** Keywords ***

Preencher o campo Descrição |${descricao}|
    Wait Until Element Is Visible      ${cpDescricao}       180 
    Click Element       ${cpDescricao}
    Preencher Campo        ${cpDescricao}       ${descricao}   
    Press Keys    ${cpDescricao}    ENTER
    Sleep      3

Preencher o campo Data final |${dataFinal}| a data do lançamento final do lote
    Click Element       ${dtFinal}
    Preencher Campo        ${dtFinal}       ${dataFinal}
    Press Keys    ${dtFinal}    ENTER
    Sleep      3
   
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
    Double Click Element       ${cpDescricao}
    Sleep 3
