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

Excluir pelo Motivo |${Motivo}|
    Click no Item                           ${BotaoExcluir}
    Valida Mensagem                         ${ConfirmaExcluir}                  O Laudo já foi Emitido. Tem certeza que deseja EXCLUÍ-LO?
    Click no Item                           ${ExcluirSim}
    Valida Mensagem                         ${ConfirmaExcluirOk}                Deseja confirmar a exclusão?
    Click no Item                           ${ExcluirOK}
    Preencher Campo                         ${MotivoExc}                        ${Motivo}
    Click no Item                           ${ConfirmaMotivo}  
    Sleep    10

