##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Entrada de Documentos
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

Preencher Datas |${DataIni}| |${DataFim}|
    Preencher Campo                     ${CampoDataIni}        ${DataIni}
    Preencher Campo                     ${CampoDataFim}        ${DataFim}
#Datas Fixas retroativas
Preencher Tipo, Matricula e Pesquisar |${TipoAtend}| |${MatCad}|
    Preencher Campo        ${CampoTipo}              ${TipoAtend}
    Preencher Campo        ${CampoMat}               ${MatCad}
    Click no Item                                    ${BotaoPesquisar}
Dar Entrada |${MsgSucesso}|
    Click no Item                  ${BotaoEntrada}
    Valida Mensagem                ${CampoMsgSucesso}             ${MsgSucesso}
    Click no Item                  ${BotaoOk}

Imprimir |${MsgImpressao}|
    Valida Mensagem                ${CampoMsgImprimir}                           ${MsgImpressao}
    Click no Item                  ${BotaoSim}            
    Sleep    5
    Click no Item                  ${BotaoImprimirFim} 
    Sleep   6
    Switch Window                  NEW
    Sleep   3
    Capture Page Screenshot


