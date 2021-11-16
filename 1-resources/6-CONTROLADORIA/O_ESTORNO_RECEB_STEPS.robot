##################################################################################################################################
# Autor: José Rocha
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/O_ESTORNO_RECEB_PAGE.robot

*** Keywords ***
Selecionar Parametros de Pesquisa o Tipo de Conta a Ser Estornada
    Seleciona Item Combobox    ${CampoTipoConta}    Cliente
Informar Nome
    Clicar Botao se estiver Visivel           ${BtnPopupCliente}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %AMIL DF
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoNomeFantasiaCliente}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar Periodo do Pagamento
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}        ${CampoDataInicial}    01/01/2020
    Clicar no Campo e Preencher Informacao    ${CampoDataFinal}          ${CampoDataFinal}      16/11/2021
Selecionar o Tipo de Lancamento
    Clicar Botao se estiver Visivel           ${BtnPopupTipoLancamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %ESTORNO RECEBIMENTO
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoLancamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Selecionar Motivo do Cancelamento
    Clicar Botao se estiver Visivel           ${BtnPopupMotCancelamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %CONTA INDEVIDA (INUTILIZA)
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoMotCancelamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar Data que o Estorno foi Realizado
    Clicar no Campo e Preencher Informacao    ${CampoDataEstorno}        ${CampoDataEstorno}    16/11/2021
    Click no Item                             ${CampoRecebimento}
Selecionar os Recebimentos a Serem Estornados
    Click no Item                             ${BtnCheckMarcar}
Informar o Numero de Documento Referente ao Recebimento
    Clicar no Campo e Preencher Informacao    ${CampoNrDocumento}    ${CampoNrDocumento}    777777
Selecionar Confirmar
    Clicar Botao se estiver Visivel           ${BtnConfirmar}






