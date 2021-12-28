##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Consulta de Agendamento Ambulatorial Simplificado (Std)
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_AGENDAMENTO_SIMPLIFICADO_PAGE.robot

*** Variable ***

*** Keywords ***
Entrada Dados e Pesquisa |${CodPrestador}|
    Preencher campo    ${BtnPrestador}    ${CodPrestador}
    Click no Item    ${BtnPesq}

Validar Dados Pos Pesquisa |${DescServ}| |${DrecItemAgenda}| |${Incio}| |${PrestadorMed}| |${DescRec}|
    Validar Elemento Pelo Titulo    ${DescServ}
    Validar Elemento Pelo Titulo    ${DrecItemAgenda}
    Validar Elemento Pelo Titulo    ${Incio}
    Validar Elemento Pelo Titulo    ${PrestadorMed}
    Validar Elemento Pelo Titulo    ${DescRec}
