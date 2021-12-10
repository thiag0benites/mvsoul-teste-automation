##################################################################################################################################
# Autor: Marcos Costa
# Esse caso de teste tem como objetivo a inserção de contas em remessas de convênios sem agrupamento.
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_LOTE_FAT_PAGE.robot

*** Keywords ***

Informar no Campo <Convenio> |${VlConv}| <Desc. Fatura> |${VlDesc}| <Competencia> |${VlComp}|
    Validar Acesso a Tela |Faturas|
    Click no Item    ${BtConvA}
    Click no Item    ${BConvB}
    Clicar no Campo e Preencher Informacao    ${BtConvC}    ${BtConvC}    ${VlConv}
    Click no Item    ${BtConvD}
    Click no Item    ${BtConvE}    
    # Descrição
    Clicar no Campo e Preencher Informacao    ${BtDescA}    ${BtDescA}    ${VlDesc} 
    # Competencia
    Clicar no Campo e Preencher Informacao    ${BtCompA}    ${BtCompB}    ${VlComp}
Clicar no Botao <Salvar> |${MsgEsperada}|
    Click no Item    ${BtSalvar}
    sleep    2
    Valida Mensagem    ${MgsVerif}    ${MsgEsperada}