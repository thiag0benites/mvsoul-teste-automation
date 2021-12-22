##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_EXC_PED_RX_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados do Pedido |${Pedido}| |${Paciente}| |${Motivo}|
    Preencher Campo    ${CampoPedido}     ${Pedido}
    Send Keys    tab
    Validar Elemento Pelo Titulo    ${Paciente}
    Preencher Campo    ${CampoMotivo}     ${Motivo}

Excluir Pedido |${MensagemConfirmaExclusao}| |${MensagemExclusaoSucesso}|
    Click no Item    ${BotaoExcluirPedido}
    Valida Mensagem    ${MensagemToast}    ${MensagemConfirmaExclusao}
    Click no Item    ${BotaoSim}
    Valida Mensagem    ${MensagemToast2}    ${MensagemExclusaoSucesso}
    Click no Item    ${BotaoOK}



