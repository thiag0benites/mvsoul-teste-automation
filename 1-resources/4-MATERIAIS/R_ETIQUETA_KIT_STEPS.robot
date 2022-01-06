##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/4-MATERIAIS/R_ETIQUETA_KIT_PAGE.robot

*** Variable ***

*** Keywords ***
Clique em impressao de etiqueta 
   Click no Item           ${botaoImprimirEtiqueta}    
   Sleep      1
   
Validar mensagem de impressao com sucesso |${MsgEsperada}|
    Valida Mensagem    ${ElementoMsgRecebida}    ${MsgEsperada}
