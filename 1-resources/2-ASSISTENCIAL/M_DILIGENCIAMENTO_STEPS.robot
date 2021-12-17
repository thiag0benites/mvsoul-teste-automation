##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Acomanhamento de Diligenciamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_DILIGENCIAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Diligenciamento |${DtInicial}| |${DtFinal}| 
    Wait Until Element Is Visible    ${CampoDtInicial}      180
    Preencher Campo            ${CampoDtInicial}            ${DtInicial}
    Preencher Campo            ${CampoDtFinal}              ${DtFinal}
    Click no Item              ${BotaoPesquisar} 

Validar Resultado da Pesquisa |${Paciente}| |${Diligenciamento}| |${Exame}|
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${Diligenciamento}
    Validar Elemento Pelo Titulo    ${Exame}

Imprimir Relatorio
    Click no Item                   ${BotaoImprimir} 
    Sleep  3
    Switch Window                   NEW
    Sleep   5
    Capture Page Screenshot

