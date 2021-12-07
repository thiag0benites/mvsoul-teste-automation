##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_CONCOR_PAGE.robot

*** Keywords ***
Preencher campo Descricao
    Clicar no Campo e Preencher Informacao    ${campoDescricao}        ${campoDescricao}             BANCO ITAU SA
Preencher dados do cliente
    Click no Item                             ${BtnCodBanco}   
    Clicar no Campo e Preencher Informacao    ${CampoFiltro}           ${CampoFiltro}                ITAU
    Click no Item                             ${BtnFiltrar}
    Click no Item                             ${BtnOk}
    Clicar no Campo e Preencher Informacao    ${CampoAgencia}          ${CampoAgencia}               600 
    Clicar no Campo e Preencher Informacao    ${CampoDigitoAgencia}    ${CampoDigitoAgencia}         1
    Clicar no Campo e Preencher Informacao    ${CampoBairro}           ${CampoBairro}                CENTRO
    Clicar no Campo e Preencher Informacao    ${CampoNumConta}         ${CampoNumConta}              5000   
    Clicar no Campo e Preencher Informacao    ${CampoDigitoConta}      ${CampoDigitoConta}           6
    Click no Item                             ${BtnTipoContaCorrente}
    Clicar no Campo e Preencher Informacao    ${CampoFiltro}           ${CampoFiltro}                CONTA CORRENTE
    Click no Item                             ${BtnFiltrar}
    Click no Item                             ${BtnOk}
    Click no Item                             ${BtnCodContab}
    Clicar no Campo e Preencher Informacao    ${CampoFiltro}           ${CampoFiltro}                itau
    Click no Item                             ${BtnOk}
    Clicar no Campo e Preencher Informacao    ${CampoGerente}          ${CampoGerente}               DEUS DO CEU
    Click no Item                             ${AbaTransEntreEmpresas}
    Clicar no Campo e Preencher Informacao    ${CampoEmpresa}          ${CampoEmpresaEdit}           1
    Send Keys                                 tab
    Clicar no Campo e Preencher Informacao    ${CampoTipoTrans}        ${CampoTipoTrans}             Recebimentos
    Send Keys                                 tab
                

    