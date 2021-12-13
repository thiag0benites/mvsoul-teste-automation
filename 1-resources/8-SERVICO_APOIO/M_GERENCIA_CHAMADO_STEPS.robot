##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Gerenciamento de Chamados
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_GERENCIA_CHAMADO_PAGE.robot

*** Variable ***

*** Keywords ***
Pesquisar Chamados Abertos |${Situacao}|
    Preencher Campo    ${CampoSituacao}    ${Situacao}
    Click no Item    ${BotaoPesquisar}
    Wait Until Element Is Visible    ${CampoSituacaoAberto}    20

Finalizar Chamado |${Prioridade}| |${Satisfatorio}| |${Fidelidade}| |${MensagemSucesso}|
    Clicar no Campo e Preencher Informacao    ${CampoPrioridade}    ${CampoPrioridadeEdit}    ${Prioridade}
    Click no Item    ${BotaoFinalizar}
    Preencher Campo    ${CampoSatisfatorio}    ${Satisfatorio}
    Preencher Campo    ${CampoFidelidade}    ${Fidelidade}
    Click no Item    ${BotaoFinaliza}
    Valida Mensagem    ${MensagemToast}    ${MensagemSucesso}
