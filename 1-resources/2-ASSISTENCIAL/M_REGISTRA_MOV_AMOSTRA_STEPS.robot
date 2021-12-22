##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Registro de Passagem de Amostra
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_REGISTRA_MOV_AMOSTRA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Amostra |${Bancada}| |${Amostra}|
    Wait Until Element Is Visible    ${BotaoLovBancada}    180
    Selecionar Item Na Lista    ${BotaoLovBancada}    ${Bancada}    ${Bancada}
    Preencher Campo    ${CampoAmostra}    ${Amostra}
    Send Keys    tab

Validar Passagem de Amostra |${MsgRegistroAnterior}| |${MsgConfirmaPassagem}| |${ValidaPassagemAmostra}|
    Valida Mensagem    ${MensagemToast}    ${MsgRegistroAnterior}
    Click no Item    ${BotaoSim}
    Valida Mensagem    ${MensagemToast}    ${MsgConfirmaPassagem}
    Click no Item    ${BotaoSim}
    Validar Elemento Pelo Titulo    ${ValidaPassagemAmostra}
