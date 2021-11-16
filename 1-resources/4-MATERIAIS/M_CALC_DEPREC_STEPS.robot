##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Passos da tela Calculo da Depreciação do Bem 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CALC_DEPREC_PAGE.robot
Library    SeleniumLibrary

*** Variable ***

${CurrentDate}

*** Keywords ***

Validar Acesso a Tela 
    Sleep       3
    Wait Until Element Is Visible       ${TelaDepreciacao}      120

Preencher o campo Mês/Ano geração
    Preencher Campo        ${mesAnoGeracao}       11/2015
    Press Keys    ${mesAnoGeracao}    ENTER
    Sleep      3    

Selecionar Tipo de depreciação
    #Click Button       ${tipoDeprec}
    Seleciona Item Combobox        ${selectTipDeprec}       Mensal
    Sleep       3
     
Selecionar no campo [Para depreciações atrasadas,contabilizar em]
    #Click Button       ${deprecAtrasadas}
    Seleciona Item Combobox        ${selectDeprecAtrasadas}       Mês/Ano de geração da depreciação
    Sleep       3
    
# Clicar no botao [Gerar depreciação]
#     Click Button       ${btnGerarDeprec}
#     Wait Until Element Is Visible       ${listaItensDeprec}      120
    
# Clicar no botao [Desfazer depreciações]
#     Sleep       4
#     Click Button       ${btnDesfazerDeprec}
#     Sleep       10



Clicar no botao [${nomeBtn}]
    IF    '${nomeBtn}' == 'Gerar depreciação'
        Wait Until Element Is Visible    ${btnGerarDeprec}    60
        Click Button    ${btnGerarDeprec}
        Sleep    3
    ELSE IF    '${nomeBtn}' == 'Desfazer depreciações'
        Wait Until Element Is Visible    ${btnDesfazerDeprec}    30
        Sleep    3
        Click Button    ${btnDesfazerDeprec}
        Sleep    1
    ELSE IF    '${nomeBtn}' == 'Sim'
        Wait Until Element Is Visible    ${btnSim}    30
        Sleep    1
        Click Element    ${btnSim}
        Sleep    1
    END
 

Validar mensagem
    Sleep       3
    Valida Mensagem                  ${MensagemToast}                Nenhum registro foi recuperado. Informe a consulta novamente.