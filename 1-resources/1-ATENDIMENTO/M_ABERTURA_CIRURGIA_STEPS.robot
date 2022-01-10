##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Elementos e metodos da pagina    Abertura de Cirurgia
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_ABERTURA_CIRURGIA_PAGE.robot

*** Keywords ***
Preencher Campos Aviso |${Aviso4}| |${AtendAviso4}|
    Preencher campo    ${AvisoCirurgia}    ${Aviso4}
    #Para esse campo pode se usar a massa ${Aviso5} que já estão no gerenciador.
    Preencher campo    ${Atendimento}    ${AtendAviso4}
    #Para esse campo pode se usar a massa    ${AtendAviso5} que já estão no gerenciador.
    Send Keys    tab
    Click no Item    ${BotaoOK}
    Click no Item    ${BtnConfirmar}
    Click no Item    ${btnNaoNotifications}

Validar Mensagem |${MsgRetorno}|
    ContextoSteps.Valida Mensagem    ${MensagemToast2}    ${MsgRetorno}
