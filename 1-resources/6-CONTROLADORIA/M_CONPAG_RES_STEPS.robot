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
    
Preencher Campos Obrigatorios "Tipo Documento|${TIpoDocumento}|" "Fornecedor|${Fornecedor}|" "Empresa|${Empresa}|" "Valor Bruto|${VlBruto}|"
    Clicar no Campo e Preencher Informacao            ${BtnTipoDoc}             ${CampoFiltro}            ${TIpoDocumento}
    Clicar no Campo e Preencher Informacao            ${BtnFornecedor}          ${CampoFiltro}            ${Fornecedor}    ##1000 MARCAS LTDA
    Clicar no Campo e Preencher Informacao            ${BtnEmpresa}             ${CampoFiltro}            ${Empresa}       ##5 - HOSPITAL MV
    Clicar no Campo e Preencher Informacao            ${CampoValorBruto}        ${CampoValorBruto}        ${VlBruto}       ## 1000

