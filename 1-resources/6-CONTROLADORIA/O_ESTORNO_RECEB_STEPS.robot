##################################################################################################################################
# Autor: José Rocha
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_ESTORNO_RECEB_PAGE.robot

*** Keywords ***
Selecionar Parametros de Pesquisa o Tipo de Conta a Ser Estornada |${TipoDeConta}| 
    Seleciona Item Combobox                   ${CampoTipoConta}    ${TipoDeConta}
Informar Nome |${Cliente}|
    Clicar Botao se estiver Visivel           ${BtnPopupCliente}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${Cliente}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoNomeFantasiaCliente}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar Periodo do Pagamento |${DtInicial}| |${DtFinal}| 
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}        ${CampoDataInicial}    ${DtInicial}
    Clicar no Campo e Preencher Informacao    ${CampoDataFinal}          ${CampoDataFinal}      ${DtFinal}
Selecionar o Tipo de Lancamento |${TipoLancamento}|
    Clicar Botao se estiver Visivel           ${BtnPopupTipoLancamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${TipoLancamento}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoLancamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Selecionar Motivo do Cancelamento |${MotivoCancelamento}|
    Clicar Botao se estiver Visivel           ${BtnPopupMotCancelamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${MotivoCancelamento}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoMotCancelamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar Data que o Estorno foi Realizado |${DtEstorno}|
    Clicar no Campo e Preencher Informacao    ${CampoDataEstorno}        ${CampoDataEstorno}    ${DtEstorno}
    Click no Item                             ${CampoRecebimento}
Selecionar os Recebimentos a Serem Estornados
    Click no Item                             ${BtnCheckMarcar}
Informar o Numero de Documento Referente ao Recebimento |${NrDocumento}|
    Clicar no Campo e Preencher Informacao    ${CampoNrDocumento}    ${CampoNrDocumento}    ${NrDocumento}
Selecionar Confirmar
    Clicar Botao se estiver Visivel           ${BtnConfirmar}






