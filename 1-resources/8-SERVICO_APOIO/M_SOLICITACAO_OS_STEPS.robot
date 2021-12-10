##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Recebimento de Ordem de Serviço
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SOLICITACAO_OS_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campos Obrigatorios |${Descricao}| |${DtPrev}| |${HrPrev}| |${Especialidade}| |${TpOS}| |${BemPatrimonial}| |${Oficina}| |${Solicitante}|
    Preencher Campo                     ${CampoDescricao}                    ${Descricao}
    Preencher Campo                     ${CampoDtPrev}                       ${DtPrev}
    Preencher Campo                     ${CampoHrPrev}                       ${HrPrev}
    Selecionar Item Na Lista            ${BotaoLovEspecialidade}             ${Especialidade}          ${Especialidade}
    Selecionar Item Na Lista            ${BotaoLovTpOS}                      ${TpOS}                   ${TpOS}
    Selecionar Item Na Lista            ${BotaoLovBemPatrimonial}            ${BemPatrimonial}         ${BemPatrimonial}
    Selecionar Item Na Lista            ${BotaoLovOficina}                   ${Oficina}                ${Oficina}
    Selecionar Item Na Lista            ${BotaoLovSolicitante}               ${Solicitante}            ${Solicitante}
    
Preencher Aba Servico |${CdServico}| |${CdFuncionario}|
    Clicar Item e Selecionar da Lista   ${CampoCdServico}            ${BotaoLov}    ${CdServico}       ${CdServico}
    Clicar Item e Selecionar da Lista   ${CampoCdFuncionario}        ${BotaoLov}    ${CdFuncionario}   ${CdFuncionario}

Salvar Ordem de Servico |${MensagemEsperadaSucesso}| |${MensagemEsperadaConfirma}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${MensagemSalvarSucesso}             ${MensagemEsperadaSucesso}
    Valida Mensagem                     ${MensagemConfirmaOS}                ${MensagemEsperadaConfirma}
    Click no Item                       ${BotaoOk}

    