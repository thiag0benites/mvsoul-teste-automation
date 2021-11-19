##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de O_CONSOLIDACAO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_CONSOLIDACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher campos mes e ano |${data}|
    Preencher Campo                         ${CampoMesAno}                  ${data} 

Clicar no botao de confirmacao 
    Click no Item  ${BtnConfirmacao}
    Sleep    20

Validar mensagem de confirmacao |${mensagem}|
    Valida Mensagem         ${MensagemSalvar}               ${mensagem}


