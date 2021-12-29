##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_ACOM_SOLCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Data Inicial |${DataIni}|
    Preencher Campo    ${CampoDataIni}    ${DataIni}

Preencher Data Final
    Preencher campo com data e hora    ${CampoDataFim}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataFim}    Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "C_ACOM_SOLCOM", linha "1", coluna "DataFim", valor "${DataFim}"

Pesquisar e Validar Pesquisa |${Estoque}|
    Click no Item    ${BotaoPesquisar}
    Validar Elemento pelo Titulo    ${Estoque}

