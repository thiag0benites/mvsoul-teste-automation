##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de O_CONSOLIDACAO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/O_CONSOLIDACAO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher campos mes e ano 
    Preencher Campo                         ${CampoMesAno}                  11/2021 

Clicar no botão de confirmacao 
    Click no Item  ${BtnConfirmacao}
    Sleep    20

Validar mensagem de confirmação
    Valida Mensagem         ${MensagemSalvar}               Fim da Consolidação para o Mês 11/2021 .


