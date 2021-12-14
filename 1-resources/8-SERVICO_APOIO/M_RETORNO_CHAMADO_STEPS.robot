##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Retorno de Chamados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_RETORNO_CHAMADO_PAGE.robot

*** Variable ***

*** Keywords ***
Clicar na Aba Parecer e Preencher resposta |${Resposta}|
    Click no Item    ${AbaParecer}
    Preencher Campo    ${CampoResposta}    ${Resposta}

Marcar como Respondido e Validar |${MsgSalva}|
    Click no Item    ${BotaoRespondido}
    Valida Mensagem    ${Mensagem}    ${MsgSalva}
