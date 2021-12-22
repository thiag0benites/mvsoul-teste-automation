##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_ITENS_PRESC_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Prescricao |${Prescricao}|
    Click Elemento por titulo    Procurar
    Sleep    1
    Clicar no Campo e Preencher Informacao    ${DivPresc}    ${CampoPresc}    ${Prescricao}
    Click Elemento por titulo    Executar Consulta

Validar Pesquisa |${Paciente}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Sleep    3

Imprimir e Validar
    Click no Item    ${BotaoImprimir}
    Sleep    2
    Click no Item    ${BotaoImprimirFim}
    Sleep    6
    Switch Window    NEW
    Sleep    1
    Capture Page Screenshot
