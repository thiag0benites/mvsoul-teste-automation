##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de Agendamentos (Std)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/C_AGENDAMENTOS_PAGE.robot

*** Variable ***

*** Keywords ***
Entrada Dados e Pesquisa |${DtInicial}| |${DtFinal}|
    Preencher campo    ${BtnDataInicial}    ${DtInicial}
    Preencher campo    ${BtnDataFinal}    ${DtFinal}
    Click no Item    ${BtnPesq}

Validar Dados Pos Pesquisa |${Agenda}| |${DataHoraAgenda}| |${ItemAgendamento}| |${PrestadorMed}| |${NomePac}|
    Validar Elemento Pelo Titulo    ${Agenda}
    Validar Elemento Pelo Titulo    ${DataHoraAgenda}
    Validar Elemento Pelo Titulo    ${ItemAgendamento}
    Validar Elemento Pelo Titulo    ${PrestadorMed}
    Validar Elemento Pelo Titulo    ${NomePac}
