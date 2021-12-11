##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Saída de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/DOCENTR_LOTE_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Same |${SAME}|
    Preencher Campo                ${CampoSame}                   ${SAME}
    Click no Item                  ${BotaoAcessar}
    Sleep   3

Preencher Datas |${DataIni}|
    Preencher Campo                     ${CampoDataIni}        ${DataIni}
    Preencher campo com data e hora     ${CampoDataFim}     %d/%m/%Y     00:00:00 
    Send Keys    TAB
    ${DataFim}               Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "DOCENTR_LOTE", linha "1", coluna "DataFim", valor "${DataFim}"

Preencher Tipo, Matricula e Pesquisar |${TipoAtend}| |${MatCad}|
    Preencher Campo        ${CampoTipo}              ${TipoAtend}
    Preencher Campo        ${CampoMat}               ${MatCad}
    Click no Item                                    ${BotaoPesquisar}
Preencher Armario e dar Entrada |${Armario}| |${MsgSucesso}|
    Preencher Campo                ${CampoArmario}                ${Armario}
    Click no Item                  ${BotaoEntrada}
    Valida Mensagem                ${CampoMsgSucesso}             ${MsgSucesso}
    Click no Item                  ${BotaoOk}

Imprimir |${MsgImpressao}|
    Valida Mensagem                ${CampoMsgImprimir}                           ${MsgImpressao}
    Click no Item                  ${BotaoSim}            
    Sleep    5
    Click no Item                  ${BotaoImprimirFim} 
    Sleep   2
    Switch Window                  NEW
    Sleep   3
    Capture Page Screenshot


