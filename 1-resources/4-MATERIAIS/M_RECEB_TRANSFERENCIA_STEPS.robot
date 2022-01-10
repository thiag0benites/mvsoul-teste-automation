##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Recebimento de transferências entre estoques
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_RECEB_TRANSFERENCIA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Transferencia
    Click no Item    ${CbConfTransferencia}

Confirmar Transferencia |${MsgImprimir}| |${MensagemSucesso}|
    Click no Item    ${BotaoConfirmar}
    Genericos.Valida Mensagem    ${MensagemToast2}    ${MsgImprimir}
    Click no Item    ${BotaoNao}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
    Click no Item    ${BotaoOK}
