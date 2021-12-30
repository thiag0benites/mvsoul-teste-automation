##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Consulta de Itens Prescritos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PED_RX_ATEND_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Atendimento, Medico e Setores |${Atend}| |${Med}| |${SetSol}| |${SetEx}|
    Preencher Campo    ${CampoAtend}    ${Atend}
    Preencher Campo    ${CampoMed}    ${Med}
    Preencher Campo    ${CampoSetSol}    ${SetSol}
    Preencher Campo    ${CampoSetEx}    ${SetEx}

Preencher Data de Solicitacao, Autorizacao e dtValidade
    ${DataAtual}    Get Current Date    result_format=%d/%m/%Y
    Preencher Campo    ${CampDataPed}    ${DataAtual}
    Send Keys    TAB
    Altera massa de dados da "M_PED_RX_ATEND", linha "1", coluna "DataPed", valor "${DataAtual}"
    Preencher campo com data e hora    ${CampDataSol}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataSol}    Get Element Attribute    ${CampDataSol}    title
    Altera massa de dados da "M_PED_RX_ATEND", linha "1", coluna "DataSol", valor "${DataSol}"
    Preencher campo com data e hora    ${CampDataAut}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataAut}    Get Element Attribute    ${CampDataAut}    title
    Altera massa de dados da "M_PED_RX_ATEND", linha "1", coluna "DataAut", valor "${DataAut}"
    Preencher campo com data e hora    ${CampDataVal}    %d/%m/%Y    00:00:00
    Send Keys    TAB
    ${DataVal}    Get Element Attribute    ${CampDataVal}    title
    Altera massa de dados da "M_PED_RX_ATEND", linha "1", coluna "DataVal", valor "${DataVal}"

Preencher Exame, Salvar e Validar |${Exame}| |${Mensagem}|
    Clicar no Campo e Preencher Informacao    ${DivExame}    ${CampoExame}    ${Exame}
    Send Keys    TAB
    Click no Item    ${BotaoOk}
    Clicar Botao Salvar
    Valida Mensagem    ${MensagemToast}    ${Mensagem}
