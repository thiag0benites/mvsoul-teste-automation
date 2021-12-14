##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cancelamento de Solicitacao
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_CANCSOL_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Solicitacao e Pesquisar |${Solic}|
    Preencher Campo    ${CampoSolic}    ${Solic}
    Click Elemento por titulo    Executar Consulta

Cancelar Solicitacao e Justificar |${Motivo}| |${Justificativa}|
    Click no Item    ${CheckCancelar}
    Click no Item    ${BotaoCancelar}
    Preencher Campo    ${MotivoCanc}    ${Motivo}
    Preencher Campo    ${JustificativaCanc}    ${Justificativa}
    Click no Item    ${BotaoConfirmar}

Valida Sucesso |${MsgSucesso}|
    Valida Mensagem    ${MensagemSucesso}    ${MsgSucesso}
    Click no Item    ${BotaoOk}