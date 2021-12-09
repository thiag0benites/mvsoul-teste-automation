##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Confirmação de Entrega de Amostra
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ENTREGA_AMOSTRA_PAGE.robot

*** Variable ***

*** Keywords ***
Realizar Entrega Amostra |${CdAmostra}|
    Wait Until Element Is Visible        ${BotaoNovaEntrega}                120
    Click no Item                        ${BotaoNovaEntrega}
    Preencher Campo                      ${CampoEntregaAmostra}             ${CdAmostra}
    Send Keys                            tab

Validar Amostra Entregue |${MensagemSucesso}|
    Valida Mensagem                      ${MensagemSucesso}                 ${MensagemSucesso}