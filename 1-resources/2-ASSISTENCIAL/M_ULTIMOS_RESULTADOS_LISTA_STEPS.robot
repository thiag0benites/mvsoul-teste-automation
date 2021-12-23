##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Ultimos Resultados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ULTIMOS_RESULTADOS_LISTA_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Exames Realizados |${Pedido}| |${Paciente}|
    Preencher Campo    ${CampoPedido}    ${Pedido}
    Click Elemento por titulo    Executar Consulta
    Validar Elemento Pelo Titulo    ${Paciente}

Acessar Tela M_LIBERA_EXAME_LAB |${NomeTelaLiberacao}|
    Click no Item    ${BotaoRevisar}
    Validar Acesso a Tela |${NomeTelaLiberacao}|

Validar Tela M_ULTIMOS_RESULTADOS_LISTA |${Paciente}| |${Exame}| |${Laboratorio}| 
    Click no Item    ${BotaoUltimosResultados}
    Wait Until Element Is Visible    xpath=//input[@id="inp:nmPaciente"][@title="${Paciente}"]    20
    Wait Until Element Is Visible    xpath=//div[@data-member="NM_EXAME"][@title="${Exame}"]    20
    Wait Until Element Is Visible    xpath=//div[@data-member="NM_SET_EXA"][@title="${Laboratorio}"]    20

 
