##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Solicitação de Serviços
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SOLICITACAO_SERV_PAGE.robot

*** Variable ***

*** Keywords ***
Validar Campos Preenchidos ao Acessar Tela
    Validar Item                        ${CampoDataDesabilitado}
    Validar Item                        ${CampoHoraDesabilitado}
    Validar Item                        ${CampoSolicitantePreenchido}

Preencher Tipo de OS e Bem Patrimonial |${TpOS}| |${BemPatrimonial}| 
    Selecionar Item Na Lista            ${BotaoLovTpOS}                        ${TpOS}                ${TpOS}         
    Selecionar Item Na Lista            ${BotaoLovBemPatrimonial}              ${BemPatrimonial}      ${BemPatrimonial}

Validar Campos com Preenchimento Automatico |${Localidade}|
    Validar Elemento Pelo Titulo        ${Localidade}  

Preencher Descricao |${Descricao}|
    Preencher Campo                     ${CampoDescricao}                       ${Descricao}

Preencher Campos Obrigatorios |${Oficina}| |${Ramal}| |${Email}| |${Prioridade}|
    Selecionar Item Na Lista            ${BotaoLovOficina}                      ${Oficina}            ${Oficina}
    Preencher Campo                     ${CampoRamal}                           ${Ramal} 
    Validar Elemento Pelo Titulo        ${Email}
    Preencher Campo                     ${CampoPrioridade}                      ${Prioridade}
    Send Keys                           tab        

Salvar Solicitacao de Servico |${MsgConfirmacao}| |${MsgSucesso}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${MensagemToast}                        ${MsgConfirmacao}
    Click no Item                       ${BotaoOk}
    Valida Mensagem                     ${MensagemToast}                        ${MsgSucesso}

    