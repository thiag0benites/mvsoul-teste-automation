##################################################################################################################################
# Autor: Marcos Costa
# Descrição:  O Caso de Teste tem Como Objetivo Cadastrar Protocolos.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/2-ASSISTENCIAL/M_PROTOCOLO_PAGE.robot

*** Keywords ***

Informa na Tela Protocolo <Desc> |${VlDesc}| <Dias> |${VlDias}| <Ciclo> |${VlCiclo}| <Dt Inicio> |${VlDtIni}| <Dt Valid> |${VlDtVal}| <Ativo> |${VlAtivo}| <IdadeInicial> |${VlIdadeA}| <IdadeFinal> |${VlIdadeB}| <Salvar> |${MsgEsperada}| <DocPadrao> |${VlDoc}| <QtDias> |${VlQtDias}|
    Validar Acesso a Tela |Protocolo|
    Clicar no Campo e Preencher Informacao    ${CpDesc}      ${CpDesc}      ${VlDesc}
    Send Keys    Tab
    Clicar no Campo e Preencher Informacao    ${CpDiasA}     ${CpDiasB}     ${VlDias}
    Send Keys    Tab
    Clicar no Campo e Preencher Informacao    ${CpCicleA}    ${CpCicleA}    ${VlCiclo}
    Send Keys    Tab
    Sleep    1
    Send Keys    Tab
    Clicar no Campo e Preencher Informacao    ${CpDtIniA}    ${CpDtIniB}    ${VlDtIni}
    Send Keys    Tab
    Clicar no Campo e Preencher Informacao    ${CpDtValA}    ${CpDtValA}     ${VlDtVal}
    # Campo Ativo
    Clicar no Campo e Preencher Informacao    ${CpAtivoA}    ${CpAtivoB}     ${VlAtivo}
    Click no Item     ${CpFiltro}
    # Faixa Etaria: 30 a 40
    Clicar no Campo e Preencher Informacao     ${CpFaiEtA}     ${CpFaiEtA}     ${VlIdadeA}
    Clicar no Campo e Preencher Informacao     ${CpFaiEtB}     ${CpFaiEtB}     ${VlIdadeB}
    Click no Item      ${CpConfir}
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}
    Sleep    1
    Click no Item        ${BtNotifiA}
    # Documento Padrão: 84
    Click no Item     ${CpDocPad}
    Click no Item     ${CpDocPaA}
    # Click no Item     ${CpDocPaB}    
    Clicar no Campo e Preencher Informacao    ${CpDocPaB}     ${CpDocPaB}      ${VlDoc}
    Click no Item     ${CpDocPaC}
    Click no Item     ${CpDocPaD1}
    # QtDias
    Clicar no Campo e Preencher Informacao    ${CpQtDias}     ${CpQtDias}     ${VlQtDias}
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}

