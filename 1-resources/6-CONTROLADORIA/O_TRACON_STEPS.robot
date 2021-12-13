##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/O_TRACON_PAGE.robot

*** Keywords ***
Preencher dados para transferencia |${NumDoc}||${Descricao}||${CodLanc}||${ValorMov}|
    Clicar no Campo e Preencher Informacao    ${campoNumDoc}    ${campoNumDoc}    ${NumDoc}
    Clicar no Campo e Preencher Informacao    ${CampoDescricao}    ${CampoDescricao}    ${Descricao}
    Clicar no Campo e Preencher Informacao    ${CampoCodLanc}    ${CampoCodLanc}    ${CodLanc}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoValorMov}    ${CampoValorMov}    ${ValorMov}

Preencher conta de origem |${ContaCorrente}|
    Clicar no Campo e Preencher Informacao    ${CampoContaCorrente}    ${CampoContaCorrente}    ${ContaCorrente}

Preencher empresa_conta destino |${Empresa}||${CCorrente}||${MsgEsperada}|
    Clicar no Campo e Preencher Informacao    ${CampoEmpresa}    ${CampoEmpresa}    ${Empresa}
    Clicar no Campo e Preencher Informacao    ${CampoCCorrente}    ${CampoCCorrente}    ${CCorrente}
    Send Keys    enter
    Click no Item    ${btnSalvar}
    Valida Mensagem    ${Alerta}    ${MsgEsperada}
    Click no Item    ${btnOk}
