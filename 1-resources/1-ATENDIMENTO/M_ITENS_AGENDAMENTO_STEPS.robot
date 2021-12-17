##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Itens de Agendamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_ITENS_AGENDAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Atendimento |${Atendimento}|
    Preencher Campo                         ${CampoAtendimento}             ${Atendimento}

Escolher Novo Tipo |${Origem}|
    Preencher Campo                         ${CampoOrigem}                  ${Origem}

Confirmar Alteracao |${MensagemAlerta}| |${MensagemSucesso}| 
    Click no Item                           ${BotaoConfirmar}
    Valida Mensagem                         ${MensagemToast}                ${MensagemAlerta}
    Click no Item                           ${BotaoSim}
    Valida Mensagem                         ${MensagemToast}                ${MensagemSucesso}            
    Click no Item                           ${BotaoOk}     


