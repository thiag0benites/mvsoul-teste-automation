##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_GERIVE_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher o campo <Contagem>|${codContagem}|
    Preencher campo                  ${codigoContagem}           ${codContagem} 

Clicar no botão Confirmar
    Click no Item    ${buttonConfirmar}

Clicar no botão Sim no modal de notificacao
    Click no Item     ${buttonSim}
    Sleep             30