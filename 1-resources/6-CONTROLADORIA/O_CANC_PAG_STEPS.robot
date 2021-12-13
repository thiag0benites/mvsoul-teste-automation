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

Selecionar Debito
    Click no Item                       ${BotaoDebito}

Selecionar Dinheiro
    Click no Item                       ${BotaoDinheiro}

Selecionar TED
    Click no Item                       ${BotaoTED}

Selecionar Baixa
    Click no Item                       ${BotaoBaixa}

Selecionar Desconto
    Click no Item                       ${BotaoDesconto}

Selecionar Bordero |${Cheque}|
    Click no Item                       ${BotaoBordero} 
    Preencher Campo                     ${CampoBordero}                ${Cheque}

Selecionar BorderoTed |${Cheque}| 
    Preencher Campo                     ${CampoBordero}                ${Cheque}
    Click no Item                       ${BotaoPesquisar}

Selecionar Motivo |${Motivo}|
    Preencher Campo                     ${CampoMotivo}                ${Motivo}
    Send Keys   TAB

Selecionar Data |${Data}|
    Preencher Campo                     ${CampoData}                  ${Data}

Selecionar DataIni |${Data}|
    Preencher Campo                     ${CampoDataIni}                  ${Data}

Selecionar na Lista 
    Click no Item                       ${PrimeiroDaLista}

Confirmar e Excluir |${MsgConfirmaExc}| |${MensagemSucesso}|
    Click no Item                       ${BotaoConfirmar}
    Valida Mensagem                     ${MensagemConfirmar}          ${MsgConfirmaExc}
    Click no Item                       ${BotaoSim}
    Valida Mensagem                     ${NotfMensagemSucesso}        ${MensagemSucesso}
    Click no Item                       ${BotaoOk}

Excluir |${MensagemSucesso}|
    Sleep   5
    Click no Item                       ${BotaoConfirmar}
    Valida Mensagem                     ${NotfMensagemSucesso}        ${MensagemSucesso}
    Click no Item                       ${BotaoOk}