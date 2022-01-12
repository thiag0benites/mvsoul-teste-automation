##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PREPARACAO_MEDICAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***

Acessar e Preencher Informacoes
    Wait Until Element Is Visible            ${CampoPac}    250
    Preencher Campo                          ${CampoSolic}    2304472
    Preencher Campo                          ${CampoDataIni}    18/09/2021
    Preencher Campo                          ${CampoDataFim}    20/09/2021
    Click no Item                            ${BotaoConsultar}
Consultar Prescricao |${Prescricao}|
    Click Elemento por titulo               Procurar
    Sleep    1
    Clicar no Campo e Preencher Informacao    ${DivPresc}     ${CampoPresc}    ${Prescricao}
    Click Elemento por titulo               Executar Consulta 

Validar Pesquisa |${Paciente}|
    Validar Elemento Pelo Titulo            ${Paciente}
    Sleep    3

Imprimir e Validar
    Click no Item        ${BotaoImprimir}
    Sleep    2
    Click no Item    ${BotaoImprimirFim}
    Sleep    6
    Switch Window    NEW
    Sleep    1
    Capture Page Screenshot