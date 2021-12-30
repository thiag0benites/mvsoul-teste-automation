##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de    Recebimento de transferência entre empresas
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_RECEBIMENTO_EMP_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Recebimento |${Estoque}|
    Click no Item    ${CheckReceb}
    Clicar no Campo e Preencher Informacao    ${DivEst}    ${CampoEst}    ${Estoque}

Preencher Data
    Click no Item    ${DivDt}
    Preencher campo com data e hora    ${CampoDt}    %d/%m/%Y    00:00:00
    ${Data}    Get Element Attribute    ${CampoDtP}    title
    Altera massa de dados da "M_RECEBIMENTO_EMP", linha "1", coluna "Data", valor "${Data}"

Selecionar Movimentacao e Confirmar |${Movimentacao}| |${EstDest}| |${MensagemSucesso}|
    Clicar no Campo e Preencher Informacao    ${DivMov}    ${CampoMov}    ${Movimentacao}
    Send Keys    TAB
    Sleep    2
    Preencher Campo    ${CampoEstDest}    ${EstDest}
    Click no Item    ${BotaoConfirma}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
