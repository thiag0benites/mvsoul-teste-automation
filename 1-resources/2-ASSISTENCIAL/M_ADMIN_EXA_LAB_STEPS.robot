##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Gerenciamento de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ADMIN_EXA_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Atendimento |${Atendimento}|
    Preencher Campo                         ${CampoAtendimento}                 ${Atendimento}
    Click Elemento por titulo               Executar Consulta 

Clicar no Pedido
    Click no Item                           ${LinhaDoPedido}

Excluir pelo Motivo |${MensagemExclusao}| |${MensagemExclusaoConfirma}| |${Motivo}|
    Click no Item                           ${BotaoExcluir}
    Valida Mensagem                         ${ConfirmaExcluir}                  ${MensagemExclusao}
    Click no Item                           ${ExcluirSim}
    Valida Mensagem                         ${ConfirmaExcluirOk}                ${MensagemExclusaoConfirma}
    Click no Item                           ${ExcluirOK}
    Preencher Campo                         ${MotivoExc}                        ${Motivo}
    Click no Item                           ${ConfirmaMotivo}  
    Sleep    10

