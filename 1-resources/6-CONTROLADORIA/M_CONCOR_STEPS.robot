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
    Click no Item                ${campoDescricao}
    Preencher campo              ${campoDescricao}            BANCO ITAU SA
        
        
Preencher dados do cliente
    Click no Item                ${BtnCodBanco}   
    Click no Item                ${CampoFiltro}
    Preencher campo              ${CampoFiltro}               ITAU
    Click no Item                ${BtnFiltrar}
    Click no Item                ${BtnOk}
   
    
    Click no Item                ${CampoAgencia}
    Preencher campo              ${CampoAgencia}              600
    Click no Item                ${CampoDigitoAgencia}    
    Preencher campo              ${CampoDigitoAgencia}        1
  
    Click no Item                ${CampoBairro}    
    Preencher campo              ${CampoBairro}               CENTRO
    
    Click no Item                ${CampoNumConta}
    Preencher campo              ${CampoNumConta}             5000
    
    Click no Item                ${CampoDigitoConta}
    Preencher campo              ${CampoDigitoConta}          6
    
    Click no Item                ${BtnTipoContaCorrente}
    Click no Item                ${CampoFiltro}
    Preencher campo              ${CampoFiltro}               CONTA CORRENTE
    Click no Item                ${BtnFiltrar}
    Click no Item                ${BtnOk}
    
    Click no Item                ${BtnCodContab}
    Click no Item                ${CampoFiltro}
    Preencher campo              ${CampoFiltro}               itau
    Click no Item                ${BtnOk}
    
    Click no Item                ${CampoGerente}
    Preencher campo              ${CampoGerente}              DEUS DO CEU
    Click no Item                ${AbaTransEntreEmpresas}
    Sleep                        5        
    #Click no Item                ${CampoEmpresa}
    
    #Click no Item                ${BtnListaEmpresas}

    