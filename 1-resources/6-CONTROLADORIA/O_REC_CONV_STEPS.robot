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
Selecionar Convenio e Colocar o Sistema em Modo de Pesquisa |${CampoConvenio}| |${NrReferencia}|
    Wait Until Element Is Visible                          ${btnConvenio}    120
    Clicar Botao se estiver Visivel                        ${btnConvenio}
    Selecionar Item Na Lista                               ${btnConvenio}    ${CampoConvenio}    ${CampoConvenio}
    # Clicar no Campo e Preencher Informacao                 ${campoFiltro}    ${campoFiltro}    ${CampoConvenio}
    # Clicar Botao se estiver Visivel                        ${btnFiltrar}
    # Click no Item                                          ${convenioFiltrado}
    # Clicar Botao se estiver Visivel                        ${btnOk}
    Clicar no Campo e Preencher Informacao                 ${campoNrRef}    ${campoNrRef}    ${NrReferencia}
    Wait Until Element Is Visible                          ${btnExecutarConsulta}    60
    Clicar Botao se estiver Visivel                        ${btnExecutarConsulta}
    # Wait Until Element Is Visible                          ${validacaoNrRef}    60
Consultar nota fiscal pelo numero
    Element Should Be Visible                              ${validarNRef}
Consultar nota fiscal pelo valor da nota
    Element Should Be Visible                              ${validaVlNota}
Alterar a Data do Recebimento |${DtRecebimento}|
    Wait Until Element Is Visible                          ${campoDtRecebimento}    60
    Preencher campo com data e hora                        ${campoDtRecebimento}    %d/%m/%y    00:00:00
Informar o Numero do Documento |${NrDocumento}|
    Wait Until Element Is Visible                          ${campoNrDocumento}    120
    Preencher Campo                                        ${campoNrDocumento}    ${NrDocumento}
    #Clicar no Campo e Preencher Informacao                ${campoNrDocumento}    ${campoNrDocumento}    ${NrDocumento}
Informar a Conta Corrente em Que o Valor da Nota Fiscal Sera Creditado |${ContaCorrente}|
    Clicar Botao se estiver Visivel                        ${btnContaCorrente}
    Clicar no Campo e Preencher Informacao                 ${campoFiltro}    ${campoFiltro}    ${ContaCorrente}
    Clicar Botao se estiver Visivel                        ${btnFiltrar}
    Click no Item                                          ${contaCorrenteFiltrada}
    Clicar Botao se estiver Visivel                        ${btnOk}
    Wait Until Element Is Visible                          ${btnVlImpRetidoDisable}
Selecionar a Aba Contas x Itens da Nota Fiscal
    Clicar Botao se estiver Visivel                        ${btnContasItensNF}
Informar no Campo (Receb.) o Valor a Ser Recebido |${VlReceb}|
    Clicar no Campo e Preencher Informacao                 ${clickReceb}    ${campoReceb}    ${VlReceb}
Clicar em (Efetuar Recebimento)
    Clicar Botao se estiver Visivel                        ${btnEfetuarReceb}
######################################################################################
Selecionar Convenio e Por o Sistema em Modo de Busca |${CampoConvenio}|
    Wait Until Element Is Visible                          ${btnConvenio}    20
    Selecionar Item Na Lista                               ${btnConvenio}    ${CampoConvenio}    ${CampoConvenio}
    Wait Until Element Is Visible                          ${btnExecutarConsulta}    60
    Clicar Botao se estiver Visivel                        ${btnExecutarConsulta}
Atualizar Tela
    Send Keys    tab
    Wait Until Element Is Visible    ${validacaoVlAcrescimo}    60
Clicar em 'Sim' Para Efetuar Recebimento e em 'OK' Para Validar Mensagem
    Clicar Botao se estiver Visivel                        ${btnSim}
    Clicar Botao se estiver Visivel                        ${btnOk}
Marcar o Checkbox 'Dif. Rateio e Acrescimo'
    Clicar Botao se estiver Visivel                        ${btnDifRateioEAcresc}
Marcar o Checkbox 'Glosa Nao Recebidos'
    Clicar Botao se estiver Visivel                        ${btnGlosaNReceb}
Validar Botao [VL Imposto Retido]
    Element Should Be Visible                              ${btnVlImpRetidoDisable}                                    