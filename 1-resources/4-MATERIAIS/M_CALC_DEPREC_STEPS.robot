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

Validar Acesso a Tela |NomeTela|
    Sleep       3
    Wait Until Element Is Visible       ${TelaDepreciacao}      120

Preencher o campo |Mês/Ano geração|
    Preencher Campo        ${mesAnoGeracao}        01/2023
    Press Keys    ${mesAnoGeracao}    ENTER
    Sleep      3    

# Selecionar Tipo de depreciação
#     #Click Button       ${tipoDeprec}
#     Seleciona Item Combobox        ${selectTipDeprec}       Mensal
#     Sleep       3
     
# Selecionar no campo [Para depreciações atrasadas,contabilizar em]
#     #Click Button       ${deprecAtrasadas}
#     Seleciona Item Combobox        ${selectDeprecAtrasadas}       Mês/Ano de geração da depreciação
#     Sleep       3
    
Clicar no botao [Gerar depreciação]
    Click Button       ${btnGerarDeprec}
    Wait Until Element Is Visible       ${listaItensDeprec}      120
    
Clicar no botao [Desfazer depreciações]
    Sleep       4
    Click Button       ${btnDesfazerDeprec}

Validar mensagem
    Sleep       20
    Valida Mensagem                  ${MensagemToast}                Nenhum registro foi recuperado. Informe a consulta novamente.