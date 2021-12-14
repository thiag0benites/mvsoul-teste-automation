##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/6-CONTROLADORIA/O_REC_CONV_PAGE.robot

*** Keywords ***
Selecionar a Empresa que Recebera o Recurso Atraves do Campo 'Empresa' |${CampoEmpresa}|
    Wait Until Element Is Visible                          ${empresaValidada}
    Element Should Be Visible                              ${empresaValidada}
    #Clicar Botao se estiver Visivel                        ${btnEmpresa}
    #Selecionar Item Na Lista                                ${btnEmpresa}   ${CampoEmpresa}    ${CampoEmpresa}
    #Click no Item                                          ${empresaFiltrada}
    #Clicar Botao se estiver Visivel                        ${btnOk}
Selecionar Convenio e Colocar o Sistema em Modo de Pesquisa |${CampoConvenio}| |${NrReferencia}|
    Clicar Botao se estiver Visivel                        ${btnConvenio}
    Clicar no Campo e Preencher Informacao                 ${campoFiltro}    ${campoFiltro}    ${CampoConvenio}
    Clicar Botao se estiver Visivel                        ${btnFiltrar}
    Click no Item                                          ${convenioFiltrado}
    Clicar Botao se estiver Visivel                        ${btnOk}
    Clicar no Campo e Preencher Informacao                 ${campoNrRef}    ${campoNrRef}    ${NrReferencia}
    Clicar Botao se estiver Visivel                        ${btnExecutarConsulta}
Alterar a Data do Recebimento |${DtRecebimento}|
    Wait Until Element Is Visible                          ${campoDtRecebimento}
    Clicar no Campo e Preencher Informacao                 ${campoDtRecebimento}    ${campoDtRecebimento}    ${DtRecebimento}
Informar o Numero do Documento |${NrDocumento}|
    Clicar no Campo e Preencher Informacao                 ${campoNrDocumento}    ${campoNrDocumento}    ${NrDocumento}
Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${ContaCorrente}|
    Clicar Botao se estiver Visivel                        ${btnContaCorrente}
    Clicar no Campo e Preencher Informacao                 ${campoFiltro}    ${campoFiltro}    ${ContaCorrente}
    Clicar Botao se estiver Visivel                        ${btnFiltrar}
    Click no Item                                          ${contaCorrenteFiltrada}
    Clicar Botao se estiver Visivel                        ${btnOk}
Selecionar a Aba Contas x Itens da Nota Fiscal
    Clicar Botao se estiver Visivel                        ${btnContasItensNF}
Informar no Campo (Receb.) o Valor a Ser Recebido |${VlReceb}|
    Clicar no Campo e Preencher Informacao                 ${clickReceb}    ${campoReceb}    ${VlReceb}
Clicar em (Efetuar Recebimento)
    Clicar Botao se estiver Visivel                        ${btnEfetuarReceb}