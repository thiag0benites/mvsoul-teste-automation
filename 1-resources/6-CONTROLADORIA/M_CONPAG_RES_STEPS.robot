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

Preenche Informacoes Aba Impostos "Detalhamento|${CodImpost}|" "Validar Alerta|${MsgAlerta}|"
    Click no Item                                     ${AbaImpostos}
    Clicar no Campo e Preencher Informacao            ${BtnCodImposto}          ${CampoFiltro}            ${CodImpost}
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro}
    Click no Item                                     ${AbaParcelamento}
    Click no Item                                     ${BtnSalvar}
    # Validar Pop-Pup de Alerta e Clicar                ${AlertaMsgData}          ${BtnMsgAlerta}
    Validar Informacao Item                           ${ValidAlertaSalvar}      ${MsgAlerta}
    Click no Item                                     ${BtnOkAlertaMsg}
    Validar Item                                      ${ValidCodigo}

Preenche Acrescimo "Seleciona Acrescimo|${SelecAcresc}|" "Valor Acrescimo|${VlAcres}|" "Valid Acrescimo|${ValidAcresc}|" "Valid Valor Acresc|${ValidVlAcresc}|"
    Clicar no Campo e Preencher Informacao            ${BtnAcrescimo}           ${CampoFiltro}            ${SelecAcresc}    
    Click no Item                                     ${BtnFiltrar}
    Click no Item                                     ${BtnOkFiltro}
    Validar Informacao Item                           ${ValidAcrescimo}         ${ValidAcresc}       
    Preencher campo                                   ${CampoAcrescimo}         ${VlAcres}
    Send Keys    tab    
    Validar Item                                      ${ValiVlAcrescimo}
    Validar Informacao Item                           ${ValidAcrescimo}         ${ValidVlAcresc}