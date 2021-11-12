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
    Preencher Campo        ${mesAnoGeracao}        12/2021
    Press Keys    ${mesAnoGeracao}    ENTER
    Sleep      3    

Selecionar Tipo de depreciação
    Click Element       ${tipoDeprec}
    #Selecionar Item Na Lista         ${tipoDeprec}             Mensal            Mensal
    Preencher Campo        ${tipoDeprec}        ${EMPTY}
    Preencher Campo        ${tipoDeprec}        Mensal
         
Selecionar no campo [Para depreciações atrasadas,contabilizar em]
    Click Element       ${deprecAtrasadas}
    #Selecionar Item Na Lista         ${deprecAtrasadas}             Mês/Ano de geração da depreciação            Mês/Ano de geração da depreciação
    Preencher Campo        ${deprecAtrasadas}        Mês/Ano de geração da depreciação

Clicar no botao [Gerar depreciação]
    Click Button       ${btnGerarDeprec}
    Wait Until Element Is Visible       ${listaItensDeprec}      120
 
Clicar no botão [Desfazer depreciações]
    Click Button       ${btnDesfazerDeprec}

Validar que foi desfeito a depreciação
    Valida Mensagem                  ${MensagemToast}                Nenhum registro foi recuperado. Informe a consulta novamente.