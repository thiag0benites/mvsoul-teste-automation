##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/O_GERIVE_PAGE.robot

*** Variable ***

*** Keywords ***
Usuário deverá preencher o campo <Contagem>|${codContagem}|
    Wait Until Element is Visible    ${codigoContagem}            120
    Preencher campo                  ${codigoContagem}           ${codContagem} 

Clicar no botão Confirmar
    Click Element     ${buttonConfirmar}

Clicar no botão Sim no modal de notificacao
    Wait Until Element is Visible    ${buttonSim}            30
    Click Element     ${buttonSim}