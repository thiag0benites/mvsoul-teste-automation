##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Histórico das Movimentações da Pasta do Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/C_PAC_PRONT_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar SAME |${SAME}|
    Wait Until Element Is Visible    ${BotaoLovSAME}    120
    Selecionar Item Na Lista    ${BotaoLovSAME}    ${SAME}    ${SAME}
    Click no Item    ${BotaoAcessar}

Consultar Movimentacao Pasta Paciente |${Paciente}|
    Selecionar Item Na Lista    ${BotaoLovAtendimento}    ${Paciente}    ${Paciente}
    Click no Item    ${BotaoConsultar}

Validar Consulta Movimentacao |${Destino1}| |${Destino2}|
    Validar Elemento Pelo Titulo    ${Destino1}
    Validar Elemento Pelo Titulo    ${Destino2}
