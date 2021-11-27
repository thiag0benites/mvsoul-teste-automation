##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Gerenciamento de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_ADMIN_EXA_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Atendimento
    Preencher Campo                         ${CampoAtendimento}                 478647
    Click Elemento por titulo               Executar Consulta 

Clicar no Pedido
    Click no Item                           ${LinhaDoPedido}

Excluir 
    Click no Item                           ${BotaoExcluir}
    Valida Mensagem                         ${ConfirmaExcluir}                  O Laudo já foi Emitido. Tem certeza que deseja EXCLUÍ-LO?
    Click no Item                           ${ExcluirSim}
    Valida Mensagem                         ${ConfirmaExcluirOk}                Deseja confirmar a exclusão?
    Click no Item                           ${ExcluirOK}
    Sleep    10

