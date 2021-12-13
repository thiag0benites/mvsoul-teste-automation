##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_PRODUZIR_KIT_PAGE.robot

*** Keywords ***

Informacoes para producao dos kits|${Estoque}||${KitASerProduzido}|
    Wait Until Element Is Visible                   ${BtnEstoque}                   120  
    Click no Item                                   ${BtnEstoque}
    Preencher campo                                 ${CampoFiltro}                  ${Estoque}
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}                                  
    Selecionar Item Na Lista                        ${BtnKitASerProduzido}          ${KitASerProduzido}         ${KitASerProduzido}                                  
    
Produtos do Kit |${Produto1}||${Lote1}||${QntReservada1}||${Produto2}||${Lote2}||${QntReservada2}|  
    Click no Item                                   ${BtnCodDoProduto}
    Click no Item                                   ${BtnCompoEmEdicao}
    Preencher campo                                 ${CampoFiltro}           ${Produto1}
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}
    Send Keys                                       tab


    Click no Item                                   ${CampoLote1}  
    Selecionar Item Na Lista                        ${BtnCompoEmEdicao}      ${Lote1}                          ${Lote1}
    Clicar no Campo e Preencher Informacao          ${CampoQtdReservada1}    ${CampoEditavel}                  ${QntReservada1}
    
    
    Click no Item                                   ${BtnAdicionar}        
    
    
    Click no Item                                   ${BtnCompoEmEdicao}
    Preencher campo                                 ${CampoFiltro}           ${Produto2}
    Click no Item                                   ${BtnFiltro}
    Click no Item                                   ${Btnok}
    
    Click no Item                                   ${CampoLote2}  
    Selecionar Item Na Lista                        ${BtnCompoEmEdicao}      ${Lote2}                         ${Lote2}
    Clicar no Campo e Preencher Informacao          ${CampoQtdReservada2}    ${CampoEditavel}                 ${QntReservada2}
    

Impressao e Validacao do Teste
    Click no Item                                   ${BtnImprimirComprovante}
    Click no Item                                   ${BtnImprimir}
    Sleep                                           5
    Capture Page Screenshot
