##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Solicitação de Transferencia de Leito
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_SOLIC_TRANSF_LEITO_PAGE.robot

*** Variable ***

*** Keywords ***

Incluir Nova Solicitacao Apontando a Tela do Teste
    Wait Until Element Is Visible    ${BotaoIncluir}    250
    Click no Item                    ${BotaoIncluir}
    Sleep    5
Preencher Atendimento, Acomodacao e Motivo |${Atendimento}| |${Acomodacao}| |${Motivo}|
    Preencher Campo                         ${CampoAtendimento}             ${Atendimento}
    Preencher Campo                         ${CampoAcomodacao}              ${Acomodacao}
    Preencher Campo                         ${CampoMotivo}                  ${Motivo}
Confirmar e Validar |${MsgSalva}|
    Click no Item                           ${BotaoConfirmar}
    Valida Mensagem                         ${MensagemToast}                ${MsgSalva}            
    Click no Item                           ${BotaoOk}     
