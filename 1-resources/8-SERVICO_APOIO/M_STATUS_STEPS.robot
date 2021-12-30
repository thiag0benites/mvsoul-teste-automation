##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Refeição com Status Aberto
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_STATUS_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Refeicao |${Refeicao}|
    Selecionar Item Na Lista    ${BotaoLovRefeicao}    ${Refeicao}    ${Refeicao}

Salvar Refeicao |${MensagemSucesso}| |${Refeicao}|
    Click no Item    ${BotaoSalvar}
    Click no Item    ${BotaoSair}
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
    Validar Elemento Pelo Titulo    ${Refeicao}
