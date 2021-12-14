##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Executar    a conciliação bancária dos lançamentos de extrato efetuados nas contas correntes da instituição .
# A conciliação consiste num comparativo entre as movimentações na conta bancária e as registradas no sistema de Controle Financeiro.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/O_CONCBANC_PAGE.robot

*** Keywords ***
Informar no campo <Periodo Lanc> |${PeriodoInicial}| e |${PeriodoFinal}|
    Clicar no Campo e Preencher Informacao    ${campoPerInicial}    ${campoPerInicial}    ${PeriodoInicial}
    Clicar no Campo e Preencher Informacao    ${campoPerFinal}    ${campoPerFinal}    ${PeriodoFinal}

Preencher valor Valor Minmo |${VlMinimo}| e Valor Maximo |${VlMaximo}| do campo <Intervalo Valor>
    Clicar no Campo e Preencher Informacao    ${ValorMinimo}    ${ValorMinimo}    ${VlMinimo}
    Clicar no Campo e Preencher Informacao    ${ValoMaximo}    ${ValoMaximo}    ${VlMaximo}

Informar no campo <Empresa> o codigo da empresa Valor Empresa |${ValorFiltro}|
    Click no Item    ${MultEmpresa}
    Clicar no Campo e Preencher Informacao    ${Vfiltro}    ${Vfiltro}    ${ValorFiltro}
    Click no Item    ${BotaoFiltro}
    Click no Item    ${BtOk}

Seleciona no campo <Status> uma Opçao |${NaoConciliado}|
    Click no Item    ${TipoDoc}
    Clicar no Campo e Preencher Informacao    ${TipoDocLov}    ${TipoDocLov}    ${NaoConciliado}

Informar no campo <Nr do documento> o Numero de um doc a ser pesquisado |${NrDoc}|
    Clicar no Campo e Preencher Informacao    ${NumeroDoc}    ${NumeroDoc}    ${NrDoc}

Informar no campo <Conta Corrente> o Nr da Conta Corrente |${NrConCor}|
    Click no Item    ${ListConCor}
    sleep    2
    Click no Item    ${BtConCor}
    Clicar no Campo e Preencher Informacao    ${FilterLovC}    ${FilterLovC}    ${NrConCor}
    Click no Item    ${BtFilter}
    Click no Item    ${BtConCorOk}

Clicar no Botao Pesquisar
    Click no Item    ${ExecPesc}

Selecionar os lancamentos que serao conciliados
    Click no Item    ${CkMovCor}

Clicar no botao Salvar |${MsgEsperada}|
    Click no Item    ${SalConCor}
    sleep    2
    Valida Mensagem    ${MsgVerifi}    ${MsgEsperada}
