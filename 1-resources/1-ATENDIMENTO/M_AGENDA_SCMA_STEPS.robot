##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_AGENDA_SCMA_PAGE.robot

*** Keywords ***
Cadastre o agendamento |${Item}| |${Paciente}|
    #Double Click Element    ${DiaEscolhido}
    Click no Item    ${DiaEscolhido}
    Click no Item    ${DiaEscolhido}
    Sleep    3
    Preencher Campo    ${CampoItem}    ${Item}
    Send Keys    enter
    Wait Until Element Is Visible    ${MsgValidada}
    Click no Item    ${BtnPesquisar}
    Sleep    3
    Preencher Campo    ${CampoPaciente}    ${Paciente}
    Send Keys    enter

Salve o agendamento
    Click no Item    ${BtnAgendamento}
    Click no Item    ${BtnS}
    Should Not Be Empty    ${MsgValidada}

Exclusao do agendamento |${MsgValidada}|
#para nao perder a massa de teste
    Click no Item    ${BtnAgendamento}
    Click no Item    ${BtnLimpar}
    Click no Item    ${BtnSim}
    Validar Informacao Item    ${MsgExclusao}    ${MsgValidada}
