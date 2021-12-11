##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Protocolos de Cadastro de Prontuário
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_CAD_PRONT_PAGE.robot

*** Variable ***

*** Keywords ***

Preencher Same |${Same}|
    Preencher Campo                ${CampoSame}                   ${Same}
    Click no Item                  ${BotaoAcessar}
    Sleep   3
Preencher Campos do Prontuario |${Paciente}| |${Armario}| |${Linha}| |${Obs}|
    Preencher Campo                ${CampoPaciente}               ${Paciente}
    Preencher Campo                ${CampoArmario}                ${Armario}
    Send Keys    TAB
    Preencher Campo                ${CampoLinha}                  ${Linha}
    Send Keys    TAB
    Preencher Campo                ${CampoObs}                    ${Obs}


Salvar e validar |${MsgSalva}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                ${MensagemToast}               ${MsgSalva}

    