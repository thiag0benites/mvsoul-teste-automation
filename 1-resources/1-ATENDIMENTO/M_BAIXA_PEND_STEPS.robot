##################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/1-ATENDIMENTO/M_BAIXA_PEND_PAGE.robot

*** Keywords ***

Informa na Tela Pendencias por Atendimentos <Atendimento> |${VlAtend}| <Paciente> |${VlPaci}| <OBS> |${VlObs}| <MSG> |${MsgEsperada}|
    Validar Acesso a Tela |Pendências por Atendimentos|
    Clicar no Campo e Preencher Informacao    ${CpAtend}    ${CpAtend}     ${VlAtend}
    Clicar no Campo e Preencher Informacao    ${CpPacie}    ${CpPacie}     ${VlPaci}
    Click no Item    ${CpPesq}
    Clicar no Campo e Preencher Informacao    ${CpObser}    ${CpObser}     ${VlObs}
    # Salvar e Validar
    Click no Item     ${BtSalvar}
    sleep    2
    Valida Mensagem     ${MgsVerif}     ${MsgEsperada}

