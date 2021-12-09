##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Acompanhamento de Solicitacoes de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste 
Resource          ../../2-pages/4-MATERIAIS/C_ACOM_SOLCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Data Inicial
    Preencher campo com data e hora     ${CampoDataIni}    %d/%m/%Y    00:00:00

Pesquisar e Validar Pesquisa |${Estoque}|
    Click no Item                       ${BotaoPesquisar}
    Validar Elemento pelo Titulo        ${Estoque}



  
 Captura do codigo do aviso de cirurgia|${suite}|${id}|
    Wait Until Element Is Visible    ${inputAvisoCirurgia}    30
    Should Not Be Empty   ${inputAvisoCirurgia}
    ${codAvisoCir}    Get Element Attribute    ${inputAvisoCirurgia}    title
    Altera massa de dados da "${suite}", linha "${id}", coluna "preAgCirAvisoCirurgia", valor "${codAvisoCir}"
    Sleep    2   
