##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/1-ATENDIMENTO/CANC_ALTA_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher o campo atendimento |${numAtend}|
    Preencher campo                  ${campoAtendimento}              ${numAtend} 
    
Clicar no botao Cancelar Alta 