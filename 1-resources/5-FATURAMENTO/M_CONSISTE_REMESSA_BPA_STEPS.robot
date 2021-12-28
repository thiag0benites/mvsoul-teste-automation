##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Cadastro de Convênios
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_CONSISTE_REMESSA_BPA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados da Producao BPA |${Competencia}| |${Remessa}| |${MensagemCriticas}|
    Selecionar Item Na Lista    ${BotaLovCompetencia}    ${Competencia}    ${Competencia}
    Selecionar Item Na Lista    ${BotaoLovRemessa}    ${Remessa}    ${Remessa}
    Click no Item    ${BotaoConsistir}
    Genericos.Valida Mensagem    ${MensagemToast}    ${MensagemCriticas}
    Click no Item    ${BotaoOK}

Acessar Tela M_CONSISTE_REMESSA_BPA |${NomeTelaRemessa}|
    Click no Item    ${BotaoVisualizarCriticas}
    Validar Acesso a Tela |${NomeTelaRemessa}|

Validar Criticas Exibidas da Remessa |${Critica1}| |${Critica2}|
    Validar Elemento Pelo Titulo    ${Critica1}
    Validar Elemento Pelo Titulo    ${Critica2}

Imprimir Relatorio
    Click no Item    ${BotaoImprimir}
    Click no Item    ${BotaoConfirmaImprimir}
    Sleep    3
    Switch Window    NEW
    Sleep    5
    Capture Page Screenshot
