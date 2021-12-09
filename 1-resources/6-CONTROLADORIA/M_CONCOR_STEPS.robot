##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_CONCOR_PAGE.robot

*** Keywords ***
Preencher campo Descricao |${Descricao}|
    Clicar no Campo e Preencher Informacao    ${campoDescricao}    ${campoDescricao}    ${Descricao}

Preencher dados do cliente |${CodBanco}||${Agencia}||${DigitoAgencia}||${Bairro}||${NumConta}||${DigitoConta}||${TipoCC}||${CodReduzido}||${Gerente}|
    Clicar no Campo e Preencher Informacao    ${CampoCodBanco}    ${CampoCodBanco}    ${CodBanco}
    Clicar no Campo e Preencher Informacao    ${CampoAgencia}    ${CampoAgencia}    ${Agencia}
    Clicar no Campo e Preencher Informacao    ${CampoDigitoAgencia}    ${CampoDigitoAgencia}    ${DigitoAgencia}
    Clicar no Campo e Preencher Informacao    ${CampoBairro}    ${CampoBairro}    ${Bairro}
    Clicar no Campo e Preencher Informacao    ${CampoNumConta}    ${CampoNumConta}    ${NumConta}
    Clicar no Campo e Preencher Informacao    ${CampoDigitoConta}    ${CampoDigitoConta}    ${DigitoConta}
    Clicar no Campo e Preencher Informacao    ${CampoTipoContaCorrente}    ${CampoTipoContaCorrente}    ${TipoCC}
    Clicar no Campo e Preencher Informacao    ${CampoCodReduzido}    ${CampoCodReduzido}    ${CodReduzido}
    Clicar no Campo e Preencher Informacao    ${CampoGerente}    ${CampoGerente}    ${Gerente}

Preencher dados empresa |${Empresa}||${TipoTrans}||${CodReduz}||${MsgEsperada}|
    Click no Item    ${AbaTransEntreEmpresas}
    Clicar no Campo e Preencher Informacao    ${CampoEmpresa}    ${CampoEmpresaEdit}    ${Empresa}
    Send Keys    tab
    Clicar no Campo e Preencher Informacao    ${CampoTipoTrans}    ${CampoTipoTrans}    ${TipoTrans}
    Send Keys    tab
    Clicar no Campo e Preencher Informacao    ${CampoCodReduz}    ${CampoCodReduz}    ${CodReduz}
    Click no Item    ${btnSalvar}
    Valida Mensagem    ${Alerta}    ${MsgEsperada}
