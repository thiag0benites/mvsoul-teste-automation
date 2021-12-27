##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_PED_RX_CENTRALIZADA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Paciente |${Atendimento}| |${MensagemPaciente}| |${Paciente}| |${Convenio}|
    Wait Until Element Is Visible    ${CampoAtendimento}    180
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}
    Send Keys    tab
    Valida Mensagem    ${MensagemToast}    ${MensagemPaciente}
    Click no Item    ${BotaoOK}
    Validar Elemento Pelo Titulo    ${Paciente}
    Validar Elemento Pelo Titulo    ${Convenio}

Preencher Dados do Exame |${SetorExec}| |${MedicoExec}| |${Exame}| |${MensagemExame}|
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${SetorExec}    ${SetorExec}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${MedicoExec}    ${MedicoExec}
    Selecionar Item Na Lista    ${BotaoLovEdit}    ${Exame}    ${Exame}
    Valida Mensagem    ${MensagemToast}    ${MensagemExame}
    Click no Item    ${BotaoOK}

Preencher Dados da Solicitacao |${MedicoSolic}| |${SetorSolic}| |${DtSolicitacao}| |${DtAutorizacao}| |${DtValidade}|
    Selecionar Item Na Lista    ${BotaoLovMedSolicitante}    ${MedicoSolic}    ${MedicoSolic}
    Selecionar Item Na Lista    ${BotaoLovSetorSolicitante}    ${SetorSolic}    ${SetorSolic}
    Preencher Campo    ${CampoDtSolicitacao}    ${DtSolicitacao}
    Preencher Campo    ${CampoDtAutorizacao}    ${DtAutorizacao}
    Preencher Campo    ${CampoDtValidade}    ${DtValidade}
