##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/M_CONPAG_RES_PAGE.robot

*** Keywords ***
Indicar no campo 'Processo'|${Processo}| o tipo "Contas a Pagar de Diversos"
    Clicar no Campo e Preencher Informacao            ${BtnProcesso}            ${CampoFiltro}            ${Processo}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro} 
    Validar Item                                      ${ValidCampoProcessoPosit}
    
Preencher Campos Obrigatorios "Tipo Documento|${TIpoDocumento}|" "Fornecedor|${Fornecedor}|" "Empresa|${Empresa}|" "Valor Bruto|${VlBruto}|" "Numero Documento|${NrDoc}|"
    Clicar no Campo e Preencher Informacao            ${BtnTipoDoc}             ${CampoFiltro}            ${TIpoDocumento}   
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro} 
    Clicar no Campo e Preencher Informacao            ${BtnFornecedor}          ${CampoFiltro}            ${Fornecedor}      
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro} 
    Clicar no Campo e Preencher Informacao            ${BtnEmpresa}             ${CampoFiltro}            ${Empresa}        
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro} 
    Preencher campo                                   ${CampoValorBruto}        ${VlBruto}         
    Preencher campo                                   ${CampoNrDocumento}       ${NrDoc}
    Click no Item                                     ${CampoDescrComprom}
    Validar Item                                      ${TextoValidacao}

Preenche Informacoes Aba Compartilhamento "Setor|${TxtSetor}|" "Campo Custo|${CampoCusto}|" "Valor Compartilhado|${VlCompart}|"
    Click no Item                                     ${AbaCompartil}
    Clicar no Campo e Preencher Informacao            ${BtnSetor}               ${CampoFiltro}            ${TxtSetor}  
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro}
    Click no Item                                     ${CampoContaCusto}    
    Clicar no Campo e Preencher Informacao            ${BtnCampoCusto}          ${CampoFiltro}            ${CampoCusto}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro}
    Clicar no Campo e Preencher Informacao            ${CampoVlCompart}         ${CampoEditVlCompart}     ${VlCompart}  ## Valor compartilhamento deve igual ao valor bruto ##

Preenche Informacoes Aba Impostos "Detalhamento|${CodImpost}|"
    Click no Item                                     ${AbaImpostos}
    Clicar no Campo e Preencher Informacao            ${BtnCodImposto}          ${CampoFiltro}            ${CodImpost}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro}
    Click no Item                                     ${AbaParcelamento}
    Click no Item                                     ${btnSalvar}
    # Validar Pop-Pup de Alerta e Clicar                ${AlertaMsgData}          ${BtnMsgAlerta}
    Validar Pop-Pup de Alerta e Clicar                ${ValidAlertaSalvar}      ${BtnOkAlertaMsg}
    Validar Item                                      ${ValidCodigo}
