##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_IMPRIMI_ETIQ_PAGE.robot

*** Variable ***

*** Keywords ***
Visualizar os lotes zerados confirmando o botao Sim 
   Click no Item           ${botaoSim}    

Preencher etiqueta, estoque e quantidade do lote a ser impresso |${etiqueta}|,|${estoque}|,|${quantidade}|
    Preencher Campo                         ${campoEstoque}              ${estoque} 
    Sleep     1 
    Preencher Campo                         ${campoEtiqueta}             ${etiqueta} 
    Sleep     1 
    Preencher Campo                         ${campoQuantidade}           ${quantidade} 

Clique no botao imprimir etiqueta 
   Click no Item           ${botaoImprimirEtiq}    
   Sleep      1

Realizar impressao da tela 
    Sleep    25
    Capture Page Screenshot
    Switch Window    
    Sleep    1

Validar mensagem de impressao com sucesso |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
