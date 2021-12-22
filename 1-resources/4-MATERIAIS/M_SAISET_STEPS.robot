##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/C_ACOM_SOLCOM_PAGE.robot
Resource    ../8-SERVICO_APOIO/M_SAI_SETOR_STEPS.robot

*** Variable ***

*** Keywords ***
Preencher Data Inicial |${DataIni}|
    Preencher Campo    ${CampoDataIni}    ${DataIni}

Preencher Data Final
    Preencher campo com data e hora    ${CampoDataFim}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataFim}    Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "C_ACOM_SOLCOM", linha "1", coluna "DataFim", valor "${DataFim}"

Validar Saida
    Click no Item                   ${BotaoConcluir}
    Valida Mensagem                 ${Mensagem}        Movimentação Salva com Sucesso
    Click no Item                   ${BtnOk}

    

