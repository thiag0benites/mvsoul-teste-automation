##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Consulta das Ordens de Serviço
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_SOLICITACAO_OS_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Mensagem Solicitando Consulta |${MensagemEsperadaConsulta}|
    Valida Mensagem                ${MensagemToast}            ${MensagemEsperadaConsulta}

Executar Consulta via F8
    Send Keys                      F8

Validar Mensagem Solicitando Filtro |${MensagemEsperadaFiltro}|
    Valida Mensagem                ${MensagemToast}            ${MensagemEsperadaFiltro}
    Click no Item                  ${BotaoOk}
    