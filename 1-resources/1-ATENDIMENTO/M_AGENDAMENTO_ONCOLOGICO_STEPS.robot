##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/1-ATENDIMENTO/M_AGENDAMENTO_ONCOLOGICO_PAGE.robot

*** Keywords ***
Agendamento Oncologico
    Wait Until Element Is Visible    ${BtnNovoTratamento}    180
    ${Data}    Get Element Attribute    ${InputDataAgenda}    title
    Altera massa de dados da "m_agendamento_oncologico", linha "1", coluna "Data", valor "${Data}"
    Click no Item    ${BtnNovoTratamento}

Novo Tratamento|${Paciente}||${Convenio}||${Plano}||${SubPlano}|
    Wait Until Element Is Visible    ${CampoPaciente}    20
    Preencher campo    ${CampoPaciente}    ${Paciente}
    Send Keys    enter
    Preencher campo    ${CampoConvenio}    ${Convenio}
    Send Keys    enter
    Preencher campo    ${CampoPlano}    ${Plano}
    Send Keys    enter
    Preencher campo    ${CampoSubPlano}    ${SubPlano}
    Send Keys    enter
    Click no Item    ${BtnProximo}

Novo Tratamento Tela 2|${ItemDeAgendamento}||${Protocolo}||${CicloInicial}||${SessaoInicial}||${Data}||${Observacao}|
    Wait Until Element Is Visible    ${CampoItemDeAgendamento}    20
    Preencher campo    ${CampoItemDeAgendamento}    ${ItemDeAgendamento}
    Send Keys    enter
    Preencher campo    ${CampoProtocolo}    ${Protocolo}
    Send Keys    enter
    Preencher campo    ${CampoCicloInicial}    ${CicloInicial}
    Send Keys    enter
    Preencher campo    ${CampoSessaoInicial}    ${SessaoInicial}
    Send Keys    enter
    Preencher campo    ${CampoDataInicioTratamento}    ${Data}
    Send Keys    enter
    Preencher campo    ${CampoObservacao}    ${Observacao}
    Click no Item    ${BtnConcluir}

Validacao|${Data}|
    Validar Informacao Item    ${DivDataValidacao}    ${Data}
