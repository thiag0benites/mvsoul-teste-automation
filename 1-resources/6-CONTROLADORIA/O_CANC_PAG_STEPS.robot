##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de  Cancelamento de Pagamentos
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/6-CONTROLADORIA/O_CANC_PAG_PAGE.robot

*** Variable ***

*** Keywords ***


Selecionar Cheque |${Cheque}|
    Click no Item                       ${BotaoCheque} 
    Preencher Campo                     ${CampoCheque}                ${Cheque}

Selecionar Bordero |${Cheque}|
    Click no Item                       ${BotaoBordero} 
    Preencher Campo                     ${CampoBordero}                ${Cheque}

Selecionar Motivo |${Motivo}|
    Preencher Campo                     ${CampoMotivo}                ${Motivo}

Selecionar Data |${Data}|
    Preencher Campo                     ${CampoData}                  ${Data}

Confirmar e Excluir |${MsgConfirmaExc}| |${MensagemSucesso}|
    Click no Item                       ${BotaoConfirmar}
    Valida Mensagem                     ${MensagemConfirmar}          ${MsgConfirmaExc}
    Click no Item                       ${BotaoSim}
    Valida Mensagem                     ${NotfMensagemSucesso}        ${MensagemSucesso}
    Click no Item                       ${BotaoOk}