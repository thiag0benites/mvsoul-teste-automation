##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela de Movimentação Painel Centro Cirúrgico
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_MOVIMENTACAO_PAINEL_FSCC_PAGE.robot

*** Variable ***

*** Keywords ***
Entrada de Datas |${DtInicio}| |${DtFim}|
    Preencher campo    ${DtIni}    ${DtInicio}
    Preencher campo    ${DtF}    ${DtFim}

Click Botao Pesquisar
    Click no Item    ${BtnPesquisar}

Validar Dados Pos Pesquisa |${Aviso}| |${Sala}| |${Cirurgiao}| |${CodCirurgia}| |${Cirurgia}|
    Validar Elemento Pelo Titulo    ${Aviso}
    Validar Elemento Pelo Titulo    ${Sala}
    Validar Elemento Pelo Titulo    ${Cirurgiao}
    Validar Elemento Pelo Titulo    ${CodCirurgia}
    Validar Elemento Pelo Titulo    ${Cirurgia}
