##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_RECEBE_SOL_PAGE.robot

*** Variable ***

*** Keywords ***
Marcar o checkbox Recebe e clicar no botão para receber solicitações
    Click no Item           ${checkboxRecebe}
    Click no Item          ${btnReceberSolicitacoes}
