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
    Seleciona Item Combobox                   ${CampoTipoConta}          Cliente
Informar Nome do Cliente ou Paciente
    Clicar Botao se estiver Visivel           ${BtnPopupCliente}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %AMIL DF
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoNomeFantasiaCliente}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar o Periodo no Qual Ocorreu o Pagamento(Credito)
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}        ${CampoDataInicial}    01/01/2020

    Clicar no Campo e Preencher Informacao    ${CampoDataFinal}          ${CampoDataFinal}      16/11/2021
Selecionar o Tipo de Lancamento que Sera Vinculado ao Estorno
    Clicar Botao se estiver Visivel           ${BtnPopupTipoLancamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %ESTORNO RECEBIMENTO
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoLancamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Selecionar o "Motivo de Cancelamento" Pelo Qual Esta Sendo Efetuado o Estorno
    Clicar Botao se estiver Visivel           ${BtnPopupMotCancelamento}
    Clicar no Campo e Preencher Informacao    ${CampoPreencherFiltro}    ${CampoPreencherFiltro}    %BORDERO REAUTILIZAVEL
    Clicar Botao se estiver Visivel           ${BtnFiltrar}
    Click no Item                             ${CampoDescricaoMotCancelamento}
    Clicar Botao se estiver Visivel           ${BtnOk}
Informar "Dt estorno" a Data em Que Esta Sendo Realizado o Estorno do Recebimento
    Clicar no Campo e Preencher Informacao    ${CampoDataEstorno}        ${CampoDataEstorno}    16/11/2021
    Click no Item                             ${CampoRecebimento}
Selecionar os Recebimentos a Serem Estornados
    Click no Item                             ${BtnCheckMarcar}
Informar o "Nr de documento" Referente ao Recebimento
    Clicar no Campo e Preencher Informacao    ${CampoNrDocumento}    ${CampoNrDocumento}    777777
Clicar em <CONFIRMAR>
    Clicar Botao se estiver Visivel           ${BtnConfirmar}






