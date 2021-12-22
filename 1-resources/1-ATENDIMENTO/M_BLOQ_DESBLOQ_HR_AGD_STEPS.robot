##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Alteracao de Tipo de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_BLOQ_DESBLOQ_HR_AGD_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Agenda, Faixa e Motivo |${Agenda}| |${Inicio}| |${Fim}| |${Motivo}|
    Preencher Campo                        ${CampoAgenda}            ${Agenda}
    Preencher Campo                        ${CampoInicio}            ${Inicio}
    Preencher Campo                        ${CampoFim}               ${Fim}
    Preencher Campo                        ${CampoMotivo}            ${Motivo}

Confirmar e Validar |${Mensagem}|
    Click no Item                           ${BotaoConfirma}
    Valida Mensagem                         ${MensagemToast2}       ${Mensagem}           
    Click no Item                           ${BotaoOk}      

Desbloquear |${Opcao}|
    Preencher Campo                         ${Desbloqueio}    ${Opcao}

