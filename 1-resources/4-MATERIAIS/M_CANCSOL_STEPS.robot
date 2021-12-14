##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cancelamento de Solicitacao
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CANCSOL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Data Inicial |${DataIni}|
    Preencher Campo    ${CampoDataIni}    ${DataIni}

Preencher Data Final
    Preencher campo com data e hora    ${CampoDataFim}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataFim}    Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "M_CANCSOL", linha "1", coluna "DataFim", valor "${DataFim}"

Pesquisar e Validar Pesquisa |${Estoque}|
    Click no Item    ${BotaoPesquisar}
    Validar Elemento pelo Titulo    ${Estoque}

