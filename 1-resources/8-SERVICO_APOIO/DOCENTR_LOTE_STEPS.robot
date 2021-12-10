##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Saída de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/SAIPORT_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Same |${Same}|
    Preencher Campo                ${CampoSame}                   ${Same}
    Click no Item                  ${BotaoAcessar}
    Sleep   3

Preencher Data Inicial |${DataIni}|
    Preencher Campo                     ${CampoDataIni}        ${DataIni}

Preencher Data Final
    Preencher campo com data e hora     ${CampoDataFim}     %d/%m/%Y     00:00:00 
    Send Keys    TAB
    ${DataFim}               Get Element Attribute    ${CampoDataFim}    title
    Altera massa de dados da "C_ACOM_SOLCOM", linha "1", coluna "DataFim", valor "${DataFim}"

Preencher Campos do Protocolo |${PrestadorOri}| |${PrestadorDes}| |${Transp}| |${Solicitante}| |${Motivo}|
    Preencher Campo                ${CampoPrestOri}               ${PrestadorOri}
    Preencher Campo                ${CampoPrestDes}               ${PrestadorDes}
    Preencher Campo                ${CampoTransp}                 ${Transp}
    Preencher Campo                ${CampoSolicitante}            ${Solicitante}
    Preencher Campo                ${CampoMotivo}                 ${Motivo}

Preencher Itens, Salvar e Imprimir |${Matricula}| |${Tela}|
    Click no Item                  ${DivMat}
    Click no Item                  ${AbaItens}
    Preencher Campo                ${CampoMatr}                   ${Matricula} 
    Click Elemento por titulo           Salvar
    Sleep   1
    Click no Item                  ${BotaoImprimir}
    Sleep   1
    Preencher Campo                ${SaidaRelatorio}              ${Tela}
    Click no Item                  ${BotaoImprimirFim} 
    Sleep   2
    Switch Window                  NEW
    Sleep   3
    Capture Page Screenshot




Validar Mensagem Solicitando Filtro |${MensagemEsperadaFiltro}|
    Valida Mensagem                ${MensagemToast}            ${MensagemEsperadaFiltro}
    Click no Item                  ${BotaoOk}
    