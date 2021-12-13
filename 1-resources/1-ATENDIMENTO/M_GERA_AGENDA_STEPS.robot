##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Geração e Liberação de Agenda
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_GERA_AGENDA_PAGE.robot

*** Variable ***

*** Keywords ***
Selecionar Escala e Periodo |${Escala}| |${Periodo}| |${DtInicial}| |${DtFinal}|
    Selecionar Item Na Lista            ${BotaoLovEscala}         ${Escala}                ${Escala}
    Preencher Campo                     ${CampoPeriodo}           ${Periodo}
    Preencher Campo                     ${CampoDtInicial}         ${DtInicial}
    Preencher Campo                     ${CampoDtFinal}           ${DtFinal}
    Send Keys                           Enter

Validar Dados da Escala |${CdEscala}| |${TpEscala}| |${Dia}| |${HrInicial}| |${HrFinal}| |${Prestador}| |${Recurso}| |${Feriado}|
    Validar Elemento Pelo Titulo        ${CdEscala}
    Validar Elemento Pelo Titulo        ${TpEscala}
    Validar Elemento Pelo Titulo        ${Dia}
    Validar Elemento Pelo Titulo        ${HrInicial}
    Validar Elemento Pelo Titulo        ${HrFinal}
    Validar Elemento Pelo Titulo        ${Prestador}
    Validar Elemento Pelo Titulo        ${Recurso}
    Validar Elemento Pelo Titulo        ${Feriado}

Clicar Botao e Validar Mensagem
    [Arguments]                        ${Botao}                    ${MensagemRecebida}            ${MensagemEsperada}   
    Click no Item                      ${Botao}
    Valida Mensagem                    ${MensagemRecebida}         ${MensagemEsperada}
 
Clicar Botao Gerar |${MensagemRecebidaGerar}| 
    Clicar Botao e Validar Mensagem    ${BotaoGerar}               ${MensagemToast}        ${MensagemRecebidaGerar}

Clicar Opcao Sim Para Gerar Escala |${MensagemRecebidaSucesso}|
    Clicar Botao e Validar Mensagem    ${BotaoSimConfirmar}        ${MensagemToast}        ${MensagemRecebidaSucesso}
    Click no Item                      ${BotaoOk}



    

