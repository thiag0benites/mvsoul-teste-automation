##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource          ../../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_RECEBE_SOLICITACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Informar o codigo Solicitacao

Preencher o campo Usuario responsavel pela entrega

Marcar o checkbox confirmar

Clicar no botao Confirmar 

Validar mensagem de confirmacao  

Clicar no botao OK
    