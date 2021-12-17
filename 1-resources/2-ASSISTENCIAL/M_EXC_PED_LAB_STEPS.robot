##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Exclusão de Pedido de Exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_EXC_PED_LAB_PAGE.robot

*** Variable ***

*** Keywords ***
Abrir Pedido e inserir Motivo |${Pedido}| |${Motivo}|
    Preencher Campo                         ${CampoPedido}                      ${Pedido}
    Preencher Campo                         ${CampoMotivo}                      ${Motivo}
Excluir e Validar |${Mensagem1}| |${Mensagem2}| |${Mensagem3}|
    Click no Item                           ${BotaoExcluir}
    Valida Mensagem                         ${MensagemToast}                    ${Mensagem1}
    Click no Item                           ${ExcluirSim}
    Valida Mensagem                         ${MensagemToast}                    ${Mensagem2}
    Click no Item                           ${ExcluirSim}
    Valida Mensagem                         ${MensagemFinal}                    ${Mensagem3}
    Click no Item                           ${BotaoOK}
    Sleep    1
