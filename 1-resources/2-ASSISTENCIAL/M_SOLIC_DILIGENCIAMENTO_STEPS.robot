##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_SOLIC_DILIGENCIAMENTO_PAGE.robot

*** Variable ***

*** Keywords ***
Abrir Pedido e inserir Obs |${Pedido}| |${Cod}| |${Obs}|
    Preencher Campo    ${CampoPedido}    ${Pedido}
    Preencher Campo    ${CampoDiligencia}    ${Cod}
    Preencher Campo    ${CampoObs}    ${Obs}

Solicitar e Validar |${MsgSalva}|
    Click no Item    ${BotaoGravar}
    Valida Mensagem    ${MensagemFinal}    ${MsgSalva}
    Click no Item    ${BotaoOK}
    Sleep    1
