##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_LIBERA_EXAME_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Exames Realizados |${DtInicial}| |${DtFinal}|
    Preencher Campo        ${CampoDtInicial}     ${DtInicial}
    Preencher Campo        ${CampoDtFinal}       ${DtFinal}
    Click Elemento por titulo    Executar Consulta
    Wait Until Element Is Visible    ${StatusRealizado}        20

Acessar Tela M_LIBERA_EXAME_LAB |${NomeTelaLiberacao}|
    Click no Item    ${StatusRealizado}
    Click no Item    ${BotaoRevisar}
    Validar Acesso a Tela |${NomeTelaLiberacao}|

Realizar Liberacao de Exame |${NomeTelaGerenciamento}|
    Click no Item    ${BotaoRevisarTodos} 
    Click no Item    ${BotaoProximoPedido} 
    Click no Item    ${BotaoAnteriorPedido} 
    Wait Until Element Is Visible    ${StatusRevisado}        20
    Click no Item    ${BotaoSair} 
    Validar Acesso a Tela |${NomeTelaGerenciamento}|
    Wait Until Element Is Visible    ${StatusRevisado}        20





