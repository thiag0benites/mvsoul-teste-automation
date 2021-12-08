##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Saída de Documentos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_SOLICITACAO_OS_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Same |${Same}|
    Preencher Campo                ${CampoSame}                   ${Same}
    Click no Item                  ${BotaoAcessar}
    Sleep   3
Preencher Campos do Protocolo |${PrestadorOri}| |${PrestadorDes}| |${Transp}| |${Solicitante}| |${Motivo}|
    Preencher Campo                ${CampoPrestOri}               ${PrestadorOri}
    Preencher Campo                ${CampoPrestDes}               ${PrestadorDes}
    Preencher Campo                ${CampoTransp}                 ${Transp}
    Preencher Campo                ${CampoSolicitante}            ${Solicitante}
    Preencher Campo                ${CampoMotivo}                 ${Motivo}

Preencher Itens, Salvar e Imprimir |${Matricula}|
    Preencher Campo                ${CampoMatr}                   ${Matricula} 
    Click Elemento por titulo           Salvar
    Sleep   1
    Click no Item                  ${BotaoImprimir}




Validar Mensagem Solicitando Filtro |${MensagemEsperadaFiltro}|
    Valida Mensagem                ${MensagemToast}            ${MensagemEsperadaFiltro}
    Click no Item                  ${BotaoOk}
    