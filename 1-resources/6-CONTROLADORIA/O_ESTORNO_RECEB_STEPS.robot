##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/6-CONTROLADORIA/O_ESTORNO_RECEB_PAGE.robot

*** Keywords ***
Selecionar Parametros de Pesquisa o Tipo de Conta a Ser Estornada |${TipoDeConta}|
    Seleciona Item Combobox                   ${CampoTipoConta}          ${TipoDeConta}
Informar Nome do Cliente ou Paciente |${Cliente}|
    Clicar Botao se estiver Visivel           ${BtnPopupCliente}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${Cliente}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoNomeFantasiaCliente}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar o Periodo no Qual Ocorreu o Pagamento(Credito) |${DtInicial}| |${DtFinal}|
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}        ${CampoDataInicial}    ${DtInicial}
    Clicar no Campo e Preencher Informacao    ${CampoDataFinal}          ${CampoDataFinal}      ${DtFinal}
Selecionar o Tipo de Lancamento que Sera Vinculado ao Estorno |${TipoLancamento}|
    Clicar Botao se estiver Visivel           ${BtnPopupTipoLancamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${TipoLancamento}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoLancamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Selecionar o "Motivo de Cancelamento" Pelo Qual Esta Sendo Efetuado o Estorno |${MotivoCancelamento}|
    Clicar Botao se estiver Visivel           ${BtnPopupMotCancelamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    ${MotivoCancelamento}
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoMotCancelamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar "Dt estorno" a Data em Que Esta Sendo Realizado o Estorno do Recebimento |${DtEstorno}|
    Clicar no Campo e Preencher Informacao    ${CampoDataEstorno}        ${CampoDataEstorno}    ${DtEstorno}
    Click no Item                             ${CampoRecebimento}
Selecionar os Recebimentos a Serem Estornados
    Click no Item                             ${BtnCheckMarcar}
Informar o "Nr de documento" Referente ao Recebimento |${NrDocumento}|
    Clicar no Campo e Preencher Informacao    ${CampoNrDocumento}    ${CampoNrDocumento}    ${NrDocumento}
Clicar em <CONFIRMAR>
    Clicar Botao se estiver Visivel           ${BtnConfirmar}
    Clicar Botao se estiver Visivel           ${BtnOkConfirmacao}






