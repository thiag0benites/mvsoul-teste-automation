##################################################################################################################################
# Autor: Leticia Andrade
# Decrição: Passo a passo da M_LACTO_AIH_P321
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_LACTO_AIH_P321_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar pelo codigo do atendimento |${numProntuario}|
    Sleep    5
    Click Elemento por titulo               Procurar
    Preencher campo  ${campoProntuario}     ${numProntuario}

Executar a pesquisa
    Sleep    2
    Click no Item    ${btnExecutar}

Validar Resultado da Pesquisa |${dadosPesquisa}|
    Sleep   1
    Validar Elemento Pelo Titulo            ${dadosPesquisa}    

Ir para a aba Conta AIH 
    Sleep    1
    Click no Item    ${abaContas}

Ver Itens da Conta 
    Sleep    1
    Click no Item    ${abaItens}

Ver criticas da conta
    Sleep    1
    Click no Item    ${abaCriticas}

Clicar em ok para confirmar
    Sleep    1
    Click no Item  ${botaoOk}

Validar registros da tabela |${valueTable}|
    Wait Until Element Is Visible           ${gridAIH}              250
    Element Should Contain                  ${gridAIH}          ${valueTable}
