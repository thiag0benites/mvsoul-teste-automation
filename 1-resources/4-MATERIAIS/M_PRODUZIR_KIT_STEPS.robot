##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_PRODUZIR_KIT_PAGE.robot

*** Keywords ***

Informacoes para producao dos kits  #|${Competencia}|
    Wait Until Element Is Visible                   ${BtnEstoque}                   120  
    Click no Item                                   ${BtnEstoque}
    Preencher campo                                 ${CampoFiltro}                  ALMOXARIFADO
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}
#    Selecionar Item Na Lista                        ${BtnEstoque}          ALMOXARIFADO                      ALMOXARIFADO                                   
    Selecionar Item Na Lista                        ${BtnKitASerProduzido}          17694                             17694                                   
    
Produtos do Kit    
    Click no Item                                   ${BtnCodDoProduto}
    Click no Item                                   ${BtnCompoEmEdicao}
    Preencher campo                                 ${CampoFiltro}                  eFEDrina 50 MG, AMP 1 ML
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}
    Send Keys                                       tab

#    Selecionar Item Na Lista                        ${BtnCompoEmEdicao}    eFEDrina 50 MG, AMP 1 ML          ${CampoEfedrina}
    Click no Item                                   ${CampoLote1}  
    Selecionar Item Na Lista                        ${BtnCompoEmEdicao}    LOTEM                             LOTEM
    Clicar no Campo e Preencher Informacao          ${CampoQtdReservada1}    ${CampoEditavel}    2
    
    
    Click no Item                                   ${BtnAdicionar}        
    
    
    Click no Item                                   ${BtnCompoEmEdicao}
    Preencher campo                                 ${CampoFiltro}                  ALLEGRA 180MG COMP
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}
    
    Click no Item                                   ${CampoLote2}  
    Selecionar Item Na Lista                        ${BtnCompoEmEdicao}    LOTEP                             LOTEP
    Clicar no Campo e Preencher Informacao          ${CampoQtdReservada2}    ${CampoEditavel}    1
    

Impressao e Validacao do Teste
    Click no Item                                   ${BtnImprimirComprovante}
    Click no Item                                   ${BtnImprimir}
    Sleep                                           5
    Capture Page Screenshot
